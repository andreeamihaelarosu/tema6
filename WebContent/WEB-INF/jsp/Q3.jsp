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
	
	<h3>Where does your cat sharpen her claws?</h3>

	<form action="Q4" method="post">
		<input type="radio" name="answer" value="1" checked>On her/his cat tree/scratching post<br>
		<input type="radio" name="answer" value="2">On the furniture<br>
		<input type="radio" name="answer" value="3">On me<br><br>
    	<input type="submit" value="Next">
    </form>	
       
</body>
</html>