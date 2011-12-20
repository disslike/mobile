<?
$server='localhost';
$user='root';
$pass='';
$db='mobile';
$Link=@mysql_connect($server, $user, $pass);
mysql_query("SET NAMES 'UTF-8'"); 
mysql_select_db($db);
?>