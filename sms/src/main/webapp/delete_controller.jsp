<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete controller</title>
</head>
<body>
 <% 
     String rollNumber = request.getParameter("sno");
     //int rollNumber = Integer.parseInt(r);
     
     String deleteStudentQuery = "delete from student where rollNumber=?";
     
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","poojitha","poojitha");
	PreparedStatement ps = con.prepareStatement(deleteStudentQuery);
	
	ps.setString(1, rollNumber);
	int i = ps.executeUpdate();
	if(i > 0){
		out.println("<h1 style='color:green;'>**** Student deleted successfully ***</h1>");
	}
	else{
		out.println("<h1 style='color:red;'>**** Student deleted failed please try again ***</h1>");
	}
}catch(Exception e){
		e.printStackTrace();
	
}
	
	  %>
	   <a href="home.jsp" class="link">Home</a>
</body>
</html>