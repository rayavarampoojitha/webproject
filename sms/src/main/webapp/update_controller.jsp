<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update controller</title>
</head>
<body>
     <% 
     String r = request.getParameter("sno");
     int rollNumber = Integer.parseInt(r);
     
     String name = request.getParameter("fname");
     String gender = request.getParameter("gender");
     String course = request.getParameter("course");
     String mobile = request.getParameter("mobile");
     String updateStudentQuery = "update student set name=?, gender=?, course=?, mobile=? where rollNumber=?";
     
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","poojitha","poojitha");
	PreparedStatement ps = con.prepareStatement(updateStudentQuery);
	ps.setString(1, name);
	ps.setString(2, gender);
	ps.setString(3, course);
	ps.setString(4, mobile);
	ps.setInt(5, rollNumber);
	int i = ps.executeUpdate();
	if(i > 0){
		out.println("<h1 style='color:green;'>**** Student updated successfully ***</h1>");
	}
	else{
		out.println("<h1 style='color:red;'>**** Student updated failed please try again ***</h1>");
	}
}catch(Exception e){
		e.printStackTrace();
	
}
	
	  %>
	  <a href="home.jsp" class="link">Home</a>
	    
</body>
</html>