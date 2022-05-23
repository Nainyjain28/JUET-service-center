
<%@ include file="dbcon.jsp" %>
<%
String m=request.getParameter("member");

String n=request.getParameter("uid");
String o=request.getParameter("pwd");
if(m.equals("Student"))
{
PreparedStatement pst=con.prepareStatement("select * from student where er_no=? and password=? ");
pst.setString(1,n);
pst.setString(2,o);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	session.setAttribute("id",n);
	response.sendRedirect("studenthomepagee.html");
}
else
{
		String e="TRY AGAIN";
	session.setAttribute("error",e);
	response.sendRedirect("login.html");
}
}
else if(m.equals("Admin"))
{
	PreparedStatement pst=con.prepareStatement("select * from admin where id=? and password=? ");
		pst.setString(1,n);
		pst.setString(2,o);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{session.setAttribute("id",n);
		response.sendRedirect("adminhomepage.html");
		}
		else
		{
			String e="TRY AGAIN";
			session.setAttribute("error",e);
			response.sendRedirect("juet.html");
		}
}
		else if(m.equals("Worker"))
		{
			PreparedStatement pst=con.prepareStatement("select * from worker where id=? and password=? ");
				pst.setString(1,n);
				pst.setString(2,o);
				ResultSet rs=pst.executeQuery();
				if(rs.next())
				{session.setAttribute("id",n);
				response.sendRedirect("workerhomepage.html");
				}
				else
				{
					String e="TRY AGAIN";
					session.setAttribute("error",e);
					response.sendRedirect("juet.html");
				}
		}
		
		else{
			response.sendRedirect("juet.html");
		}
	
	


	

	%>
