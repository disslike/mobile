<?
include"connect.php";

$result =  'SELECT * FROM `Result` WHERE `vr_id` = 1';
$query = mysql_query($result);
$rows = mysql_num_rows($query);


echo '
<?xml version="1.0" encoding="utf8"?>
<!DOCTYPE html
     PUBLIC "-//W3C//DTD XHTML 1.1//EN"
     "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
Версия &nbsp;&nbsp; <b>1.0.0</b><br><br>
';
for ($i=0; $i<$rows; $i++){
	
	$result2 =  'SELECT * FROM `Tests` WHERE `ts_id` = '.mysql_result($query, $i, 2);
	$query2 = mysql_query($result2);
	
	echo mysql_result($query2, 0, 1);
	echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	$result3 =  'SELECT * FROM `Browsers` WHERE `br_id` = '.mysql_result($query, $i, 3);
	$query3 = mysql_query($result3);
	
	echo mysql_result($query3, 0, 1);
	echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	if (mysql_result($query, $i, 4)==1){
	echo "Тест пройден";
	}
	else{
	echo "Тест не пройден";
	};
	echo '<br><br>';
};
?>