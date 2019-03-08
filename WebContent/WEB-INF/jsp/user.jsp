<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
</head>
<body>

	<%@ page import="javax.servlet.http.HttpServlet"%>
	<%@ page import="com.andreearosu.springMvc.DBConnection"%>
	<%@ page import="java.sql.DriverManager"%>
	<%@ page import="java.sql.ResultSet"%>
	<%@ page import="java.sql.Statement"%>
	<%@ page import="java.sql.PreparedStatement"%>
	<%@ page import="java.sql.SQLException"%>

	<%
	DBConnection db = new DBConnection();
	boolean ok = false;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	 	  db.setConn(DriverManager.getConnection("jdbc:mysql://localhost:3306/javacourse","root",""));
	 	  if (db.getConn().isValid(10)) {
	 		  System.out.println("Connected to MySQL 'javacourse' database");
	 		 System.out.println(request.getAttribute("email").toString());
	 		  } else {
	 			  System.out.println("Connection to MySQL 'javacourse' database has failed 1");
	 			  }
	 	  Statement statement = db.getConn().createStatement();
	 	  ResultSet rs = statement.executeQuery("Select * from users where email=\""+request.getAttribute("email").toString()+"\"");
	 	  
	 	  if(!rs.next()){
	 		 System.out.println("No Data Found");
	 		 %> <h2> Your email address is not in the system. </h2>
	 		 	<button onclick = "window.location.href = '/AR_WebApp2/' ">Try again</button>
	 		 <%
	 	  } else if (rs.getString("password").equals(request.getAttribute("password"))) {
	 		 %><h2>Hello, ${userName}!</h2>
				<h3>Would you like to find out how much your cat loves you?</h3>
       
			    <form action="Q1" method="post">
			    	<input type="submit" value="Let's see!">
			    </form><br><br>
	 		 <%
    	  } else {
    		  %> <h3>The password you entered is incorrect. </h3> 
    		  <button onclick = "window.location.href = '/AR_WebApp2/' ">Try again</button>
 	 		 <%
    	  }
	 	 db.closeConn();
    } catch(Exception sqle) {
   	   sqle.printStackTrace();
   	   System.err.println("Error with connection: " + sqle);
   	   System.out.println("Connection to MySQL 'javacourse' database has failed 2");
  }%>

</body>
</body>
</html>