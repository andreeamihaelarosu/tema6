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
	
	<h3>Your cats' litter box is full, what do you do?</h3>

	<form action="Q6" method="post">
		<input type="radio" name="answer" value="1" checked>Scoop it immediately!<br>
		<input type="radio" name="answer" value="2">Wait until a commercial break<br>
		<input type="radio" name="answer" value="3">I haven't scooped their box in a long time<br><br>
    	<input type="submit" value="Next">
    </form>	
       
</body>
</html>