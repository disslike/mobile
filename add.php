<?
include"connect.php";
$number = $_POST['number'];
$about = $_POST['about'];
echo $vrid
$result =  'INSERT INTO `Versions` (`vr_number`, `changes`) VALUES ( "'.$number.'", "'.$about.'")';
$query = mysql_query($result);
?>