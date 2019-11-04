

<?php

require('mysqli_connect.php'); // Connect to the db.


$company = mysqli_real_escape_string($dbc,trim($_GET['_company'])); 


if($company != 'aapl' && $company != 'googl' && $company != 'rfem')
{
	exit(" 404 Error. Company input was not recognized.");
}


if($company=="aapl")
{
	$sql = "SELECT * FROM apple_info LIMIT 1";
}


if($company=="googl")
{
	$sql = "SELECT * FROM google_info LIMIT 1";
}


if($company=="rfem")
{
	$sql = "SELECT * FROM rfem_info LIMIT 1";
}


$result = mysqli_query($dbc,$sql);

///checking for final errors
if(!($result))
{ 
	
	echo '<h1>System Error</h1>
	<p class="error">You could not be updated due to a system error. 
	We apologize for any inconvenience.</p>';

	echo '<p>' . mysqli_error($dbc) . '<br><br>Query: ' . $q . '</p>';
} 

while ($row = $result->fetch_assoc())  
{
	$dbdata[]=$row;
}


$json = json_encode($dbdata, JSON_PRETTY_PRINT);

$json = wordwrap($json,80, );

printf("%s", $json);


?>