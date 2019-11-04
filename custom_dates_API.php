
<?php

require('mysqli_connect.php'); 
//=====================Reading the input===========================

$company = mysqli_real_escape_string($dbc,trim($_GET['_company'])); 

if($company != 'aapl' && $company != 'googl' && $company != 'rfem')
{
	exit("404 Error. Company input was not recognized.");
}

if($company=="aapl") 
	$company = mysqli_real_escape_string($dbc,trim('apple_partial')); 
if($company=="googl")
	$company =  mysqli_real_escape_string($dbc,trim('google_partial')); 
if($company=="rfem")
	$company =  mysqli_real_escape_string($dbc,trim('rfem_partial')); 

//==================Parsing the data for safe SQL operations======================

$_start_date = mysqli_real_escape_string($dbc,trim($_GET['_start_date'])); 
$_end_date = mysqli_real_escape_string($dbc,trim($_GET['_end_date'])); 

$_start_date =  DATE($_start_date);
$_end_date = DATE($_end_date);

//========================Getting initial number of rows==========================

	$sql = "SELECT * FROM $company WHERE date 
			BETWEEN '$_start_date' AND '$_end_date' ORDER BY high ASC";

	$result_rows = mysqli_query($dbc,$sql);

	while ($row = $result_rows->fetch_assoc())  
	{
		$dbdata[]=$row;
	}  

//==========================Find the Max===============================
	$max_price =  "SELECT MAX(high) AS 'Max Price' FROM $company 
				WHERE date BETWEEN '$_start_date' AND '$_end_date'";

	$result = mysqli_query($dbc,$max_price);

	while ($row = $result->fetch_assoc())  
	{
		$dbdata[]=$row;
	}


//====================Find the Minimum======================================

	$min_price =  "SELECT MIN(low) AS 'Min Price' FROM $company 
					WHERE date BETWEEN '$_start_date' AND '$_end_date'";

	$result = mysqli_query($dbc,$min_price);

	while ($row = $result->fetch_assoc())  
	{
		$dbdata[]=$row;
	}

//============================Find the Average===================================
	$avg_price = "SELECT FORMAT(AVG((low + high)/2),2) 
			AS 'Avg Price (high and low averaged together)' 
			FROM $company WHERE date BETWEEN '$_start_date' AND '$_end_date'";

	$result = mysqli_query($dbc,$avg_price);

	while ($row = $result->fetch_assoc())  
	{
		$dbdata[]=$row;
	}

//=====================Find the Median for low and high===========================
//-------------------------odd number of rows/days--------------------------
	$numRows = mysqli_num_rows($result_rows);
	$numRows2 = mysqli_num_rows($result_rows);


	if(($numRows%2) == 1)
	{	
		$numRows = intval(floor($numRows/2));

		$median_price_high = "SELECT high AS 'Median Price High' from $company  
						WHERE date BETWEEN '$_start_date' AND '$_end_date' 
						ORDER BY high ASC LIMIT $numRows,1";

		$result = mysqli_query($dbc,$median_price_high);

		while ($row = $result->fetch_assoc())  
		{
			$dbdata[]=$row;
		}


		$median_price_low = "SELECT low AS 'Median Price Low' from $company  
						WHERE date BETWEEN '$_start_date' AND '$_end_date' 
						ORDER BY low ASC LIMIT $numRows,1";

		$result = mysqli_query($dbc,$median_price_low);

		while ($row = $result->fetch_assoc())  
		{
			$dbdata[]=$row;
		}

	}
//---------------------------even number of rows/days---------------------
	else
	{
		///********************HIGH*************************
		
		$numRows = intval(floor($numRows/2) - 1);

		$median_price_high = "SELECT high AS 'Median Price High' from $company  
						WHERE date BETWEEN '$_start_date' AND '$_end_date' 
						ORDER BY high ASC LIMIT $numRows, 1";


		$result = mysqli_query($dbc,$median_price_high);

		$row = $result->fetch_assoc();  

		$tempFloat = 0;
		$tempFloat += (float)$row['Median Price High'];

		//for troublshooting
		echo $tempFloat;
		echo nl2br ("\n");


		$numRows += 1;

		$median_price_high = "SELECT high AS 'Median Price High' from $company  
						WHERE date BETWEEN '$_start_date' AND '$_end_date' 
						ORDER BY high ASC LIMIT $numRows, 1";

		$result = mysqli_query($dbc,$median_price_high);
		
		$row = $result->fetch_assoc();  

		//for troubleshooting
		echo (float)$row['Median Price High'];
		echo nl2br ("\n");

		$tempFloat += (float)$row['Median Price High'];

		$tempFloat = number_format(($tempFloat/2),2);

		$tempFloat = "Median Price High  :  "." ".$tempFloat;

		$dbdata[] = $tempFloat;


		//*****************LOW*****************************

		
		$numRows2 = intval(floor($numRows2/2) -1);

		$median_price_low = "SELECT low AS 'Median Price Low' from $company  
						WHERE date BETWEEN '$_start_date' AND '$_end_date' 
						ORDER BY low ASC LIMIT $numRows2, 1";


		$result = mysqli_query($dbc,$median_price_low);

		$row = $result->fetch_assoc();  

		$tempFloat = 0;
		$tempFloat += (float)$row['Median Price Low'];

		//for troubleshooting
		echo $tempFloat;
		echo nl2br ("\n");

		$numRows2 += 1;

		$median_price_low = "SELECT low AS 'Median Price Low' from $company  
						WHERE date BETWEEN '$_start_date' AND '$_end_date' 
						ORDER BY low ASC LIMIT $numRows2, 1";

		$result = mysqli_query($dbc,$median_price_low);
		
		$row = $result->fetch_assoc();  

		//for troubleshooting
		echo (float)$row['Median Price Low'];

		$tempFloat += (float)$row['Median Price Low'];

		$tempFloat = number_format(($tempFloat/2),2);

		$tempFloat = "Median Price Low  :  "." ".$tempFloat;

		$dbdata[] = $tempFloat;

	}


//===============encoding and outputting the data===========================
	$json = json_encode($dbdata, JSON_PRETTY_PRINT);

	$json = wordwrap($json,80, );

	printf("<pre>%s</pre>", $json);


//=================checking for final erros===========================
if(!($result))
{ 
	
	echo '<h1>System Error</h1>
	<p class="error">You could not be updated due to a system error. 
	We apologize for any inconvenience.</p>';

	echo '<p>' . mysqli_error($dbc) . '<br><br>Query: ' . $q . '</p>';
} 

?>
