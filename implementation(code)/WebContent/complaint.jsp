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
label{
font-size:18pt;
font-family:timesnewroman;
font-weight:bold;
}
#info{
width:600px;
height:400px;
margin-right:auto;
margin-left:auto;
padding-top:150px;
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
input[type=submit]{
  padding: 18px 40px;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  background-color:black;
  opacity:.8;
letter-spacing:1px;
  color:white;
   font-size:12pt;
   
}
input[type=submit]:hover{
background-color:green;
}
input[type=password]{

padding:5px 30px;
border:none;

}
table{
border-spacing:10px 12px;
padding:40px;
}
#right{
width:300px;
height:60px;
position: fixed;
right:35px;
top:0px;
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
<table align="center" border="1">
<tr><th><b>Complaint Id</b></th><th><b>Er.No.</b></th><th><b>Name</b></th><th><b>Register date</b></th><th><b>Problem</b></th><th><b>Problem type</b></th><th><b>Status</b></th><th><b>Hostel</b></th><th><b>Room</b></th><th><b>Contact</b></th></tr>
<%
String u=(String)session.getAttribute("id");

String wor=" ";
String blk=" ";
String room=" ";
String cont=" ";
PreparedStatement ps=con.prepareStatement("select * from worker where id=?");
ps.setString(1,u);
ResultSet r=ps.executeQuery();
if(r.next()){
wor=r.getString(2);
}
PreparedStatement pst=con.prepareStatement("select * from r_complaint where worker=?");
pst.setString(1,wor);
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
	PreparedStatement pt1=con.prepareStatement("select * from student where er_no=?");
	pt1.setString(1,er);
	ResultSet rst=pt1.executeQuery();
	if(rst.next()){
		blk=rst.getString(4);
		room=rst.getString(5);
		cont=rst.getString(6);
	}
	%>
	<tr><td><%=cid%></td><td><%=er %></td><td><%=nm %></td><td><%=rd %></td><td><%=p %></td><td><%=pt %></td><td><%=s %></td><td><%=blk %></td><td><%=room %></td><td><%=cont %></td></tr>
<%
}while(rs.next());
}
%>


</div>
<div id="right">
<ul>
<li><a href="#"><b>Settings</b></a>
<ul>
<li><a href="passwor.html"><b>Changed password<b/></a></li>
<li><a href="logout.jsp"><b>Logout</b></a></li>
</ul>
</li>
</ul> 
</div>

</div>
</body>
</html>