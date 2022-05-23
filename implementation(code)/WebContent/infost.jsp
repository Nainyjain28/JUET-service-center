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
<li><a href="perinfo.jsp">Personal Information</a></li>
<li><a href="Regicomp.html">Complaint Register</a></li>
<li><a href="markcomp.html">Mark Complaint</a></li>
<li><a href="oldcom.jsp">Old Complaint</a>
</li>
</ul>
</div>
<div id="info">
<%@ include file="dbcon.jsp" %>
<%
String u=(String)session.getAttribute("id");

        String nm=request.getParameter("sname");
		String fnm=request.getParameter("fname");
		String dob=request.getParameter("dob");
		String c=request.getParameter("phn");
		String h=request.getParameter("hname");
		String r=request.getParameter("rno");
		PreparedStatement pst=con.prepareStatement("Update student set name=?,dob=?,block=?,room_no=?,father=?,contact=? where er_no=? ");
		
		
		pst.setString(1, nm);
		pst.setString(2, dob);
		pst.setString(3, h);
		pst.setString(4, r);
		pst.setString(5, fnm);
		pst.setString(6,c);
		pst.setString(7, u);
		int v=pst.executeUpdate();
		if(v!=0)
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
		<li><a href="chgpass.html"><b>Changed password</b></a></li>
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

		