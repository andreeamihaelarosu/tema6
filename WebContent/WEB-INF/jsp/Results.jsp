<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h2>${uName}, 
	
	<% if (Integer.parseInt(request.getAttribute("score").toString())<=6) { %>
       	you are your cats' BFF! Your cat loves you very much!
    <% } else if (Integer.parseInt(request.getAttribute("score").toString())>=7 && Integer.parseInt(request.getAttribute("score").toString())<=12) { %>
        you are almost there! Your cat loves you a lot!   
    <%} else { %>
    	you are just not made for each other... 
    <%} %>    
    </h2>
    
 	<form action="user2" method="post">
    	<input type="submit" value="Try another quiz">
    </form>
</body>
</html>