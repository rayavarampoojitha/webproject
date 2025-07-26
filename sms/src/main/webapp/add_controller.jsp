<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student Controller</title>
</head>
<body>
  
<%

String addStudentQuery = "insert into student values(?, ?, ?, ?, ?)";

String rNum = request.getParameter("sno");
int rollNumber = Integer.parseInt(rNum);

String name = request.getParameter("fname");
String gender = request.getParameter("gender");
String course = request.getParameter("course");
String mobile = request.getParameter("mobile");


//database logic
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","poojitha","poojitha");
	PreparedStatement ps = con.prepareStatement(addStudentQuery);
	ps.setInt(1, rollNumber);
	ps.setString(2, name);
	ps.setString(3, gender);
	ps.setString(4, course);
	ps.setString(5, mobile);
	int i = ps.executeUpdate();
	if(i > 0){
		out.println("<center> <h1 style='color: green;'>Student added successfully....</h1></center>");
	}
	else{
		out.println("<center> <h1 style='color: red;'>Error please check....</h1></center>");
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
 <a href="home.jsp" class="link">Home</a>
</body>
</html>