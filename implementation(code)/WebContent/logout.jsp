<html>
<head>
<title>Logout</title>
</head>
<style>
body{
margin:0;
padding:0;
background:linear-gradient(to right, #c1c161 0% , #C1c161 0% , #d4d4b1 100% ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
</style>
<body>
<%
session.invalidate();
%>
<center>
<h1>!! You have successfully logged out !!</h1>
<a href="login.html"><b><u><font size="5" >||Click here to Login again||</font></u></b></a>
</center>
</body>
</html>