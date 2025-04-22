<%@include file="db.jsp"%>
<% 
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		String qr="insert into user values (?,?,?)";
		PreparedStatement ps= con.prepareStatement(qr);
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, pwd);
		int i=ps.executeUpdate();
		 
		if(i>0)
		{
		%>
			<%
			response.sendRedirect("index.html");
			out.println("sucessfully signed up");
			%>
			<%
		}else
		{ 
			out.println("something went wrong");
		}
		con.close();
		%>