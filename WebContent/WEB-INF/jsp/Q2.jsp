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
	
	<h3>Does your cat expose his/her belly?</h3>

	<form action="Q3" method="post">
		<input type="radio" name="answer" value="1" checked>All the time<br>
		<input type="radio" name="answer" value="2">Sometimes<br>
		<input type="radio" name="answer" value="3">Never<br><br>
    	<input type="submit" value="Next">
    </form>	
       
</body>
</html>