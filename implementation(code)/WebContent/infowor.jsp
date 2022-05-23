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


#right{
width:300px;
height:60px;
position: fixed;
right:35px;
top:0px;
}
#info{
width:600px;
height:400px;
margin-right:auto;
margin-left:auto;
padding-top:150px;
}
</style>
<body>
<div id="main">
<div id="bar">
<ul>
<li><a href="perwor.jsp">Personal Information</a></li>
<li><a href="complaint.jsp">Complaints</a></li>
</ul>
</div>
<div id="info">
<%@ include file="dbcon.jsp" %>
<%
String u=(String)session.getAttribute("id");
String nm=request.getParameter("wname");
String t=request.getParameter("type");
String ph=request.getParameter("phn");
PreparedStatement pst=con.prepareStatement("Update worker set name=?,type=?,contact=? where id=? ");
		
		
		pst.setString(1, nm);
		pst.setString(2, t);
		pst.setString(3, ph);
		pst.setString(4, u);
		
		int exe=pst.executeUpdate();
		if(exe!=0)
		{
			%>
			<center><b>Personal Information Updated</b></center>
			<% 
				
		  }
		%>
	</div>
<div id="right">
<ul>
<li><a href="#"><b>Settings</b></a>
<ul>
<li><a href="passwor.html"><b>Changed password</b></a></li>
<li><a href="logout.jsp"><b>Logout</b></a></li>
</ul>
</li>
</ul> 
</div>

</div>
</body>
</html>