<html>
<title>
JUET service centre
</title>
<style>
body{
margin:0;

}
#main{
height:660px;
width:1347px;
background: linear-gradient(to right, #c1c161 0% , #C1c161 0% , #d4d4b1 100% ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}
ul
{
margin:0px;
padding:0px;
list-style:none;
}
ul li {
float:left;
width:250px;
height:60px;
background-color:black;
opacity:.8;
line-height:40px;
text-align:center;
font-size:22px;
margin-right:2px;
}
ul li a {
text-decoration:none;
color:white;
display:block;
height:60px;
}
ul li a:hover{
background-color:green;
height:60px;
}
ul li ul li{
display:none;
}
ul li:hover ul li{
display:block;
}

#info{
width:600px;
height:400px;
margin-right:auto;
margin-left:auto;
padding-top:80px;;
}
table{
padding:45px;
border-spacing:6px 6px;
}

fieldset{
border: 3px solid green;
border-radius:15px;
}
legend {
    display: block;
    padding-left: 2px;
    padding-right: 2px;
    font-family:verdana;
    font-size:27pt;
    text-align:center;
border:1px solid green;
border-radius:10px;

}
td{
font-family:Arial;
font-size:14pt;

}
input[type=submit]{
padding: 18px 40px;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  background-color:black;
  opacity:.8;
  color:white;
 font-size:14pt;
  letter-spacing:1px;

}
input[type=submit]:hover{
background-color:green;
 }
input[type=text],input[type=number],input[type=date],select{
padding:3px 24px;
}
#right{
width:250px;
height:60px;
position: fixed;
right:15px;
top:0px;
}
#box{
position: fixed;
right:35px;
height:60px;
width:250px;
bottom:35px;
display:block;
}
button{
background-color:black;
opacity:.8;
line-height:40px;
text-align:center;
font-size:22px;
text-decoration:none;
display:block;
height:60px;
border:none;
width:200px;
}
button:hover{
display:block;
background-color:green;
height:60px;

}
button a{
color:white;
font-family:bondimt;
text-align:center;
margin-bottom:25px;
}
#b1{
width:50px;
height:60px;
float:left;
}
#b2{
width:200px;
height:60px;
float:left;
}
</style>
<body>
<div id="main">
<div id="bar">
<ul>
<li><a href="perinfo.jsp">Personal Information</a></li>
<li><a href="Regicomp.html">Complaint Register</a></li>
<li><a href="markcomp.html">Mark Complaint</a></li>
<li><a href="oldcom.jsp">Old Complaint</a>
</li>
</ul>
</div>
<div id="info">
<form action="infost.jsp">
<fieldset>
<table align="center">
<legend >Personal Information</legend>
<%@ include file="dbcon.jsp" %>
<%
String u=(String)session.getAttribute("id");

PreparedStatement pst=con.prepareStatement("select * from student where er_no=?");
pst.setString(1,u);
ResultSet rs=pst.executeQuery();
if(rs.next()){
%>
	

<tr><td height="30"><b>Name</b></td><td><input type="text" name="sname" value="<%=rs.getString(2)%>"></td></tr>
<tr></tr>
<tr><td height="30"><b>Enrollment no.</b></td><td><input type="text" name="eno" value="<%=rs.getString(1)%>"></td></tr>
<tr></tr>
<tr><td height="30"><b>Father's Name</b></td><td><input type="text" name="fname" value="<%=rs.getString(7)%>"></td></tr>
<tr></tr>
<tr><td height="50"><b>Date of Birth</b></td><td><input type="text" name="dob" value="<%=rs.getString(3)%>"></td></tr>
<tr><td height="30"><b>Contact</b></td><td><input type="text" name="phn" value="<%=rs.getString(6)%>"></td></tr>
<tr></tr>

</td></tr>
<tr><td height="30"><b>Hostel</b></td><td><input type="text" name="hname" value="<%=rs.getString(4)%>"></td></tr>
<tr></tr>
<tr><td height="50"><b>Room no.</b></td><td><input type="text" name="rno" value="<%=rs.getString(5)%>"></td></tr>
</table>
<center>
<input type="submit" value="Submit">
</center>
</fieldset>
</form>
</div>
<%
}
%>
<div id="right">
<ul>
<li><a href="#"><b>Settings</b></a>
<ul>
<li><a href="chgpass.html"><b>Changed password<b/></a></li>
<li><a href="logout.jsp"><b>Logout</b></a></li>
</ul>
</li>
</ul> 

</div>
<div id="box">
<div id="b1"><img src="fd.jpg" height="60"></div>
<div id="b2"><button><a href="5.feedback.html"><b>Feedback</b></a></button>
</div>
</div>
</div>
</body>
</html>

