<?
include"connect.php";
$number = $_GET['number'];
$about = $_GET['about'];
echo $vrid
$result =  'INSERT INTO `Versions` (`vr_number`, `changes`) VALUES ( "'.$number.'", "'.$about.'")';
$query = mysql_query($result);
?>
