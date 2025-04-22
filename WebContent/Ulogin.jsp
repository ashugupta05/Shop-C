<%@include file="db.jsp" %>
<% 
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	String qr = "Select * from user where email=? and pwd=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1,email);
	ps.setString(2,pwd);
	ResultSet rs = ps.executeQuery();
	if(rs.next())
	{
		session.setAttribute("id", email);
		response.sendRedirect("Uhome.jsp");	
	}
	else{
	       out.println("Something went Wrong");
		}
	con.close();
	%>
		
		
	
	
