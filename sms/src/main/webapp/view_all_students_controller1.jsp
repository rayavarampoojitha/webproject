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
<title>Insert title here</title>
<style>
*{
   margin: 0;
   padding: 0;
}
.nav1{
            background-color: black;
            color: skyblue;
            padding: 35px;
        }
 table{
        border-collapse: collapse;
        margin-top: 15px;
        width: 69%;
        margin-left: 440px;
 }
 .nav3 h1{
      margin-top: 10px;
      margin-left: 410px;
 }
 ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            width: 200px;
            background-color: rgb(151, 214, 238);
            width: 30%;
            margin-top: 0px;
            position: absolute;
            border: 1px solid #555;
        }
       li a{
            display: block;
            padding: 41px;
            padding-left: 37%;
            text-decoration: none;
            color: black;
            font-size: 20px;
       } 

       li a:hover:not(.active) {
        background-color: #555;
        color: white;
        font-size: 24px;
        }
        li{
            border: 1px solid #555;
        }
        th{
        padding: 10px;
        }
        td{
        padding: 10px;
        }
 
</style>
</head>
<body bgcolor="white">
  <%! String viewAllStudentQuery = "select * from student"; %>

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","poojitha","poojitha");
	PreparedStatement ps = con.prepareStatement(viewAllStudentQuery);
	ResultSet rs = ps.executeQuery();  %>
	 <div class="nav1">
            <h1><center>STUDENT MANAGEMENT SYSTEM</h1></center>
        </div>
        <ul>
                <li class="active"><a href="./home.jsp">Home</a></li>
                <li><a href="add_student.html">Add Student</a></li>
                <li><a href="update_student.html">Update student</a></li>
                <li><a href="./view_all_students_controller1.jsp">View All Students</a></li>
                <li><a href="search_student.html">Search Student</a></li>
                <li><a href="delete_student.html">Delete Student</a></li>
              </ul>
        <div class="nav3">
	<h1 style= 'color:pink';><center>VIEW ALL STUDENTS</center></h1>
	</div>
	<center><table border="2px">
	<tr><th>ROLL NUMBER</th><th>STUDENT NAME</th><th>GENDER</th><th>COURSE</th><th>MOBILE NUMBER</th></tr>
	
	<%while(rs.next()){ %>
		<tr>
		    <td><%=rs.getInt(1)%></td>
		    <td><%=rs.getString(2)%></td>
		    <td><%=rs.getString(3)%></td>
		    <td><%=rs.getString(4)%></td>
		    <td><%=rs.getString(5)%></td>
		</tr>
<%  }%>

   </table></center>
<%} catch(Exception e){
	e.printStackTrace();
}


%>
  
</body>
</html>