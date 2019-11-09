
<?php

//=============================================setting up database connection===================================
define('DB_USER', 'nashidan1');
define('DB_PASSWORD', '');
define('DB_HOST', 'localhost');
define('DB_NAME', 'swe_project');   

// Make the connection:
$dbc = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) OR die('Could not connect to MySQL: ' . mysqli_connect_error() );

// Set the encoding...
mysqli_set_charset($dbc, 'utf8');

//===============================================================================================================

?>

<?php 
//documentation link
//https://iexcloud.io/docs/api/#historical-prices

//Can be used for initial 5 year data call, before daily update..
//$company_stock = 'https://cloud.iexapis.com/v1/stock/xsymbolx/chart/5y/?token=xtokenx';

//option for 1 month,
//$company_stock = 'https://cloud.iexapis.com/v1/stock/xsymbolx/chart/1m/?token=xtokenx';

//IEX API call for latest 5 days
$company_stock = 'https://cloud.iexapis.com/v1/stock/xsymbolx/chart/5d/?token=xtokenx';
	
	
	$token = 'pk_8172b2d33abb4ad1ab9e57a9391dcf01';
			   
	$symbols = ['rfem','googl','aapl'];

//=========================================================================================================

?>

<?php
	
	function fetch_json($url)
	{
		$curl = curl_init();
		curl_setopt_array($curl, 
		[
			CURLOPT_RETURNTRANSFER => 1,
			CURLOPT_URL => $url
		]);
		
		$resp = curl_exec($curl);
		curl_close($curl);
		
		if($resp == "You have exceeded your allotted message quota. Please enable pay-as-you-go to regain access")
		{
			return "expired_token";
		}
		
		return json_decode($resp);
	}
	
	function build_url($base,$token,$symbol)
	{
		$replace_symbol = str_replace("xsymbolx",$symbol,$base);
		$replace_token = str_replace("xtokenx",$token,$replace_symbol);
		
		return $replace_token;
	}
//==========================================================================================================
?>


<?php

	for($a=0;$a<count($symbols);$a++)
	{

		$response = fetch_json(build_url($company_stock,$token,$symbols[$a]));
		
		if($response <> 'expired_token')
		 {
		 	for($x=0;$x<count($response);$x++)
		 	{

				$date = $response[$x]->date;
				$date = mysqli_real_escape_string($dbc,trim($date)); 

				$open = $response[$x]->open;
				$open = mysqli_real_escape_string($dbc,trim($open)); 

				$close = $response[$x]->close;
				$close = mysqli_real_escape_string($dbc,trim($close));

				$high = $response[$x]->high;
				$high = mysqli_real_escape_string($dbc,trim($high));			

				$low = $response[$x]->low;
				$low = mysqli_real_escape_string($dbc,trim($low));	

				$volume = $response[$x]->volume;
				$volume = mysqli_real_escape_string($dbc,trim($volume));	

				$company = $symbols[$a];
//===================================================================================================
		 		if($company=="aapl") 
				$company = mysqli_real_escape_string($dbc,trim('apple_partial')); 
				if($company=="googl")
				$company =  mysqli_real_escape_string($dbc,trim('google_partial')); 
				if($company=="rfem")
				$company =  mysqli_real_escape_string($dbc,trim('rfem_partial'));

//====================================================================================================

				//checking to see if record of stock exists,
				//by checking if date is present
				$sql_select = "SELECT * FROM $company WHERE date = '$date' ";

				$result = mysqli_query($dbc,$sql_select);

				$count = mysqli_num_rows($result);

				//If date is not already present, insert new stuff
				//could also use INSERT IGNORE, and skip prior 2 lines
				if($count==0) 
				{				
					$insert_this = "INSERT INTO  
						$company (date, close, open, high, low, volume)
						VALUES 
						('$date', '$open', '$close', '$high', '$low', '$volume' )";

					$result = mysqli_query($dbc,$insert_this);
				}
				
				//If date is already there, no need for insert
				else 
				{	
					//do nothing....
					//continue;
				}

			}
		}
//=======================================================================================		
		else 
		{
			//If token is all used up, display that message to screen.
			echo $response;
			break;
		}
	}

?>