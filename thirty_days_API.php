<?php


require('mysqli_connect.php'); 

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


//========================================================================================

//Getting the first day, 

$base_values_day_one = "SELECT * FROM $company ORDER BY row_ID DESC LIMIT 29,1";

$day_one_result = mysqli_query($dbc,$base_values_day_one);

$day_one_row = $day_one_result->fetch_assoc();  



//first day row ID. It will be the ID of the thirtieth day.
$day_one_row_ID = (int)$day_one_row['row_ID'];
$day_one_row_ID = mysqli_real_escape_string($dbc,trim($day_one_row_ID));

//changeOverTime  =	float.	Percent change of each interval relative to first value.[(New Price - Old Price)/Old Price] 
$day_one_close_change_over_time = (float)$day_one_row['close'];
$day_one_close_change_over_time = mysqli_real_escape_string($dbc,trim($day_one_close_change_over_time)); 

//volumeChangeOverTime  = float. Percent change of each interval relative to first value. [(New Volume - Old Volume)/Old Volume] 
$day_one_volume_change_over_time = (int)$day_one_row['volume'];
$day_one_volume_change_over_time = mysqli_real_escape_string($dbc,trim($day_one_volume_change_over_time));

//volumeChange = int. Change from previous trading day.
//volumeChangePercent = float. Change percent from previous trading day



//We pull day 29 info to help with days 30 and remander calculations

$day_29 = "SELECT * FROM $company ORDER BY row_ID DESC LIMIT 1,1";

$day_29 = mysqli_query($dbc,$day_29);

$day_29 = $day_29->fetch_assoc();  


$base_volume = (int)$day_29['volume'];
$base_volume = mysqli_real_escape_string($dbc,trim($base_volume)); 

$base_close = (float)$day_29['close'];
$base_close = mysqli_real_escape_string($dbc,trim($base_close)); 

//used by formulas to multply by 100
$by_100= (int)100;
$by_100 = mysqli_real_escape_string($dbc,trim($by_100)); 


//Day 30, the first day to display. This is the running day. 
//After this, we display the next days down to zero....day 29, day 28, day 27.....day 1
//this will be done in the while loop below

$day_thirty = "SELECT row_ID, date, close, open, high, low, volume, 
ROUND((close - $base_close),2)												AS 'change', 

ROUND((((close - $base_close)/$base_close)*$by_100),2)			AS 'change_percent', 
			
ROUND((((close - $day_one_close_change_over_time)/$day_one_close_change_over_time)*$by_100),2)	AS 'ChangeOverTime',

ROUND((volume - $base_volume),2)															AS 'volumeChange',

ROUND((((volume  - $base_volume)/$base_volume )*$by_100),2)								AS 'volumeChangePercent',

ROUND((((volume - $day_one_volume_change_over_time)/$day_one_volume_change_over_time)*$by_100),2)	AS 'volumeChangeOverTime'
FROM $company ORDER BY row_ID DESC LIMIT 1 ";


$day_thirty = mysqli_query($dbc,$day_thirty);

$day_thirty = $day_thirty->fetch_assoc();  


$day_thirty_countdown_row_ID = (int)$day_thirty['row_ID'];
$day_thirty_countdown_row_ID = mysqli_real_escape_string($dbc,trim($day_thirty_countdown_row_ID));

$dbdata[] = $day_thirty;
//$dbdata[] = $day_29;
//$dbdata[] = $day_one_row;


//Getting next 29 reads
$day_thirty_countdown_row_ID -= 1;
$counter = 1;
while($counter <= 29)
{

	$day_thirty_countdown_row_ID -= 1;

	$day_before = 
	"SELECT * FROM $company WHERE row_ID = $day_thirty_countdown_row_ID";

	$day_before = mysqli_query($dbc,$day_before);

	$day_before = $day_before->fetch_assoc();  


	$base_volume = (int)$day_before['volume'];
	$base_volume = mysqli_real_escape_string($dbc,trim($base_volume)); 

	$base_close = (float)$day_before['close'];
	$base_close = mysqli_real_escape_string($dbc,trim($base_close)); 


	$day_thirty_countdown_row_ID += 1;

	if($counter < 29)
	{	
		$base_values_sql = "SELECT 
			row_ID, date, close, open, high, low, volume, 

			ROUND((close - $base_close),2)								AS 'change', 

			ROUND((((close - $base_close)/$base_close)*$by_100),2)					AS 'change_percent', 
			
			ROUND((((close - $day_one_close_change_over_time)/$day_one_close_change_over_time)*$by_100),2)  	AS 'ChangeOverTime',
			ROUND((volume - $base_volume),2)													AS 'volumeChange',
			ROUND((((volume  - $base_volume)/$base_volume )*$by_100),2)										AS 'volumeChangePercent',
			ROUND((((volume - $day_one_volume_change_over_time)/$day_one_volume_change_over_time)*$by_100),2) AS 'volumeChangeOverTime'
			FROM $company WHERE row_ID = $day_thirty_countdown_row_ID ";


	$base_result = mysqli_query($dbc,$base_values_sql);

	$base_row = $base_result->fetch_assoc();  
	$dbdata[] = $base_row;


	$base_volume = (int)$base_row['volume'];
	$base_volume = mysqli_real_escape_string($dbc,trim($base_volume)); 


	$base_close = (float)$base_row['close'];
	$base_close = mysqli_real_escape_string($dbc,trim($base_close)); 

	}

//final read
// to have the last calculations zero out, to be relative 30 days
	else if($counter = 29)
	{
		$day_one = "SELECT 
			row_ID, date, close, open, high, low, volume, 


			ROUND((change_ - change_),2) AS 'change', 
			ROUND((change_percent - change_percent),2) AS 'change_percent', 
			
			ROUND((close - close),2) AS 'ChangeOverTime',
			ROUND((volume - volume + 0.0),2)			AS 'volumeChange',
			ROUND((volume  - volume + 0.0),2)		AS 'volumeChangePercent',
			ROUND((volume - volume + 0.0),2)	AS 'volumeChangeOverTime'
			FROM $company WHERE row_ID = $day_thirty_countdown_row_ID ";


	$day_one = mysqli_query($dbc,$day_one);

	$day_one = $day_one->fetch_assoc();  
	$dbdata[] = $day_one;


	}

//increment loop counter and decrement the row_ID number
	$counter++;
	$day_thirty_countdown_row_ID = ((int)$base_row['row_ID'] - 1);

}


//***************************************************************************
///checking for final errors
if(!($base_values_sql))
{ 
	
	echo '<h1>System Error</h1>
	<p class="error">You could not be updated due to a system error. 
	We apologize for any inconvenience.</p>';

	echo '<p>' . mysqli_error($dbc) . '<br><br>Query: ' . $q . '</p>';
} 


$json = json_encode($dbdata, JSON_PRETTY_PRINT);

$json = wordwrap($json, 100 , );

printf("<pre>%s</pre>", $json);


?>