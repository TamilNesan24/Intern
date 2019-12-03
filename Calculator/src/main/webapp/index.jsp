<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculator</title>
<style>
tr{
width:100%;
}
table,tr,td
{
border: solid 1px black;
}
input
{
width:100%;
}
</style>
<script>
function clr()
{
	document.getElementById("display").value = "";
}

function putValue(val)
{
	document.getElementById("display").value += val;
}
function calculateValue()
{
	var val_1 = document.getElementById("display").value;
	var y = eval(val_1)
	document.getElementById("display").value = y;
}
</script>
</head>
<body>
<table>
<tr ><td colspan="4"><input id="display" style="width:98%" type="text"></td></tr>
<tr>
<td><input onclick = "putValue(1)" type="button" value="1"></td>
<td><input onclick = "putValue(2)" type="button" value="2"></td>
<td><input onclick = "putValue(3)" type="button" value="3"></td>
<td><input onclick = "putValue('+')" type="button" value="+"></td>
</tr>
<tr>
<td><input  onclick = "putValue(4)" type="button" value="4"></td>
<td><input  onclick = "putValue(5)" type="button" value="5"></td>
<td><input  onclick = "putValue(6)" type="button" value="6"></td>
<td><input  onclick = "putValue('-')" type="button" value="-"></td>
</tr>
<tr>
<td><input  onclick = "putValue(7)" type="button" value="7"></td>
<td><input  onclick = "putValue(8)" type="button" value="8"></td>
<td><input  onclick = "putValue(9)" type="button" value="9"></td>
<td><input  onclick = "putValue('*')" type="button" value="*"></td>
</tr>
<tr>
<td><input  onclick = "putValue('/')" type="button" value="/"></td>
<td><input  onclick = "putValue(0)" type="button" value="0"></td>
<td><input  onclick= "clr()"  type="button" value="AC"></td>
<td><input  onclick = "calculateValue()" type="button" value="="></td>
</tr>
</table>
</body>
</html>