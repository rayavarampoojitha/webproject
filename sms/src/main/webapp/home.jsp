<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        *{
            margin:0px;
            padding: 0px;
        }
        .nav1{
            background-color: black;
            color: skyblue;
            padding: 35px;
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
      /* ul li.active a{
    background-color: #555;
    color: white;
}*/

       li a:hover:not(.active) {
        background-color: #555;
        color: white;
        font-size: 24px;
        }
        li{
            border: 1px solid #555;
        }
        .bg{
        width: 500px;
        height: 600px;
        margin-left: 443px;
        position: absolute;
        }
        .h2{
        display: flex;
        }

    </style>
</head>
<body>
 <div class="nav1">
            <h1><center>STUDENT MANAGEMENT SYSTEM</h1></center>
        </div>
        <div class="h2">
            <ul>
                <li class="active"><a href="./home.jsp">Home</a></li>
                <li><a href="add_student.html">Add Student</a></li>
                <li><a href="update_student.html">Update student</a></li>
                <li><a href="./view_all_students_controller1.jsp">View All Students</a></li>
                <li><a href="search_student.html">Search Student</a></li>
                <li><a href="delete_student.html">Delete Student</a></li>
              </ul>
      <div class="bg">
       <img src="https://gsb.touro.edu/media/touro-college/content-assets/images/events/iStock-1199590896.jpg" alt="stdr" width="1030" height="640"/>
      </div>
      </div>
</body>
</html>