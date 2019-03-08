<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
       <h1>Welcome to my simple server!</h1>
       
       <p>The time here is ${serverTime}.</p>
       <p>Please login:</p>
       
       <form method="POST" action="user">
       	Name:<br><input type="text" name="userName" value="Andreea"><br><br>
       	Email:<br><input type="text" name="email" value="andreea.rosu@hartehanks.com"><br><br>
       	Password:<br><input type="password" name="pswd" value="pswd987654"><br><br>
       	<input type="submit" value="Login">
       </form>
       
</body>
</html>
