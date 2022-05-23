<html>
<title>
JUET service centre
</title>
<style>
body{
margin:0;
}
#main{
height:650px;
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
width:300px;
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
padding-top:150px;
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


#right{
width:300px;
height:60px;
position: fixed;
right:35px;
top:0px;
}
#r1
{
height:60px;
width:200px;
float:left;
padding-right:30px;
}
#r1 a{
font-size:20px;
font-family:georgia;
color:white;
font-weight:bold;
}
#r1 ul li {
height:60px;
width:200px;
}



#logo{
border-radius:50%;
}

</style>
<body>
<div id="main">
<div id="bar">
<ul>
<li><a href="aswork.html"><b>Assign Worker</b></a></li>
<li><b><a  href="showcom.jsp">Complaint</b></a></li>
<li><a href="#"><b>Complaint Search</b></a>
<ul>
<li><a href="serst.html"><b>Student</b></a></li>
<li><a href="serty.html"><b>Work Type</b></a></li>
<li><a href="serco.html"><b>Complaint</b></a></li>
</ul>
</li>
</ul> 

</div>
<div id="info">
<%@ include file="dbcon.jsp" %>
<table align="center" border="1">
<tr><th><b>Complaint Id</b></th><th><b>Er.No.</b></th><th><b>Name</b></th><th><b>Register date</b></th><th><b>Problem</b></th><th><b>Problem type</b></th><th><b>Status</b></th><th><b>Worker</b></th></tr>
<%
PreparedStatement pst=con.prepareStatement("select * from r_complaint ");
ResultSet rs=pst.executeQuery();
if(rs.next()){
	do{
	String cid=rs.getString(1);
	String er=rs.getString(2);
	String nm=rs.getString(3);
	String rd=rs.getString(4);
	String p=rs.getString(5);
	String pt=rs.getString(6);
	String s=rs.getString(7);
	String w=rs.getString(8);
	%>
	<tr><td><%=cid%></td><td><%=er %></td><td><%=nm %></td><td><%=rd %></td><td><%=p %></td><td><%=pt %></td><td><%=s %></td><td><%=w %></td></tr>
<%
}while(rs.next());
}
%>
<div id="box">
<div id="b1"><img src="fd.jpg" height="60"></div>
<div id="b2"><button><a href="fdback.jsp"><b>Feedback</b></a></button>
</div>
</div>
<div id="right">
<ul>
<li><a href="#"><b>Settings</b></a>
<ul>
<li><a href="passad.html"><b>Changed password</b></a></li>
<li><a href="logout.jsp"><b>Logout</b></a></li>
</ul>
</li>
</ul> 
</div>
</div>
</div>
</div>
</body>
</html>