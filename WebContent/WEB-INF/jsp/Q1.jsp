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
	
	<h3>Does your cat ever sleep on/next to you?</h3>

	<form action="Q2" method="post">
		<input type="radio" name="answer" value="1" checked>On me<br>
		<input type="radio" name="answer" value="2">Next to me<br>
		<input type="radio" name="answer" value="3">My cat does not sleep with me<br><br>
    	<input type="submit" value="Next">
    </form>	
       
</body>
</html>