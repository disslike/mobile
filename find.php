<?
include"connect.php";
$result = "SELECT DISTINCT pic, pol, poroda,color  FROM `kittens` ";
$query = mysql_query($result);
$rows = mysql_num_rows($query);
for ($i=0; $i<$rows; $i++){
echo '<li>
<table>
<tr>
<td width=250>
<a class="zoom2" rel="group" href="'.mysql_result($query, $i, 0).'"><img src="'.mysql_result($query, $i, 0).'" alt="" class="prev"></a>
</td>
<td >
<table class="inf">
<tr><td>
Пол:
</td><td >'
.mysql_result($query, $i, 1).'
</td></tr>
<tr><td height=20>
</td></tr>
<tr class="inf"><td>
Порода:
</td><td>'
.mysql_result($query, $i, 2).'
</td></tr>
<tr><td height=20>
</td></tr>
<tr><td>
Окрас:
</td><td>'
.mysql_result($query, $i, 3).'
</td></tr>
</table>
</td>
</table>

</li>';
	}
?>