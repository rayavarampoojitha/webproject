<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>searching student</title>
</head>
<body>
<%
 String rollNumber = request.getParameter("sno");
 String FindStudentQuery = "select *from student where rollNumber=?";
 
 String name="";
 String gender="";
 String course="";
 String mobile="";
 try{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","poojitha","poojitha");
	 PreparedStatement ps = con.prepareStatement(FindStudentQuery);
	 ps.setString(1, rollNumber);
	 ResultSet rs=ps.executeQuery();
	 if(rs.next()){
		 name=rs.getString(2);
		 gender=rs.getString(3);
		 course=rs.getString(4);
		 mobile=rs.getString(5); 
	 }
 }catch(Exception e){
	 e.printStackTrace();
 }
 %>
 <div class="search-form">
 <form action="" method="post">
    <h2>Student details</h2>
     <div class="f1">
                   <label for="sno">Roll number:</label>
                   <input type="text" disabled="disabled" value="<%=rollNumber %>">
                   <input type="hidden" id="sno" name="sno" value="<%=rollNumber %>" placeholder="studentrollno..">
               </div>
              <div class="f2">
                <label for="sno">Student Name:</label>
                <input type="text" id="fname" name="fname" disabled="disabled" value="<%=name %>" placeholder="studentname...">
              </div>
              <div class="f3">
                <label for="gender">Gender:</label>
                <input type="text" name="gender" disabled="disabled" value="<%=gender %>">
              </div>
              <div class="f6">
                <label for ="course">Course:  </label>
                <input type="text" id="course" name="course" disabled="disabled" value="<%=course %>">
              </div>
              <div class="f4">
                <label for ="mobile">Mobile No:</label>
                <input type="text" name="mobile" name="mobile" disabled="disabled" value="<%=mobile %>">
              </div>
 </form>
 </div>
  <a href="home.jsp" class="link">Home</a>
</body>
</html>