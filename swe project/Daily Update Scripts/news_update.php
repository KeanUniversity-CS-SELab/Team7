
<?php

//=========================================setting up database connection====================================
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
//https://iexcloud.io/docs/api/#news

//Can also be used for intitial startup,before daily update of database...
//$company_news = 'https://cloud.iexapis.com/v1/stock/xsymbolx/news/last/20/?token=xtokenx';

//Same as above, but if you want to initialize the fill with latest 50 stories...
//$company_news = 'https://cloud.iexapis.com/v1/stock/xsymbolx/news/last/50/?token=xtokenx';


//IEX API call for latest 3 stories
$company_news = 'https://cloud.iexapis.com/v1/stock/xsymbolx/news/last/3/?token=xtokenx';
	
	$token = 'pk_8172b2d33abb4ad1ab9e57a9391dcf01';
			   
	$symbols = ['rfem','googl','aapl'];

//==============================================================================================================

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
//===========================================================================================================
?>

<?php

	for($a=0;$a<count($symbols);$a++)
	{
	
		$response = fetch_json(build_url($company_news,$token,$symbols[$a]));
		
		if($response <> 'expired_token')
		 {
		 	for($x=0;$x<count($response);$x++)
		 	{


				$datetime = $response[$x]->datetime;
				$datetime = mysqli_real_escape_string($dbc,trim($datetime)); 

				$headline = $response[$x]->headline;
				$headline = mysqli_real_escape_string($dbc,trim($headline)); 


				$source = $response[$x]->source;
				$source = mysqli_real_escape_string($dbc,trim($source)); 


				$url = $response[$x]->url;
				$url = mysqli_real_escape_string($dbc,trim($url)); 


				$summary = $response[$x]->summary;
				$summary = mysqli_real_escape_string($dbc,trim($summary)); 


				$related = $response[$x]->related;
				$related = mysqli_real_escape_string($dbc,trim($related)); 


				$image = $response[$x]->image;
				$image = mysqli_real_escape_string($dbc,trim($image)); 

				$lang = $response[$x]->lang;
				$lang = mysqli_real_escape_string($dbc,trim($lang)); 


				$hasPaywall = $response[$x]->hasPaywall;
				$hasPaywall = mysqli_real_escape_string($dbc,trim($hasPaywall)); 


				$company = $symbols[$a];
//=======================================================================================================
		 		if($company=="aapl") 
				$company = mysqli_real_escape_string($dbc,trim('apple_news')); 
				if($company=="googl")
				$company =  mysqli_real_escape_string($dbc,trim('google_news')); 
				if($company=="rfem")
				$company =  mysqli_real_escape_string($dbc,trim('rfem_news')); 
//======================================================================================================
				//checking to see if any record of news stories already exists,
				//by checking if date is present
				$count = 0;

				$sql_datetime = "SELECT * FROM $company WHERE datetime = '$datetime' ";

				$result = mysqli_query($dbc,$sql_datetime);
				$count += mysqli_num_rows($result);


				$sql_headline = "SELECT * FROM $company WHERE headline = '$headline' ";

				$result = mysqli_query($dbc,$sql_headline);
				$count += mysqli_num_rows($result);


				$sql_url = "SELECT * FROM $company WHERE url = '$url' ";

				$result = mysqli_query($dbc,$sql_url);
				$count += mysqli_num_rows($result);


				//If date is not already present, insert new stuff
				//could also use INSERT IGNORE, and skip prior 2 lines
				if($count==0) 
				{

					$insert_this = "INSERT INTO 
						$company (datetime, headline, source, url, summary, related, image, lang, hasPaywall)
						VALUES 
						('$datetime', '$headline', '$source', '$url', '$summary', '$related', '$image', '$lang', '$hasPaywall')";

					$result = mysqli_query($dbc,$insert_this);

				}


				//If any of values already there, no need for insert
				//otherwise, you have duplicate insert
				else 					
				{	
					//do nothing....
					//continue;
				}


			}
		}
//=========================================================================================================		
		else 
		{
			//If message is all used up, display that message to screen.
			echo $response;
			break;
		}
	}

?>
