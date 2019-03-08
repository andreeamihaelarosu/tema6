<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h2>${uName}, you are going to find out if you cat loves you.</h2>
	
	<h3>You've made it to the end, do you think your cat loves you?</h3>

	<form action="Results" method="post">
		<input type="radio" name="answer" value="1" checked>Yes!<br>
		<input type="radio" name="answer" value="2">As long as I give her food :)<br>
		<input type="radio" name="answer" value="3">No...<br><br>
    	<input type="submit" value="Next">
    </form>	
       
</body>
</html>