<%@include file="db.jsp"%>
<%
String email=(String) session.getAttribute("id");
String name=request.getParameter("name");
String p=request.getParameter("price");
int price=Integer.parseInt(p);
String cat = request.getParameter("cat");
String cmp= request.getParameter("cmp");
	String qr="insert into cart values(?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1,name);
	ps.setInt(2,price);
	ps.setString(3,cat);
	ps.setString(4,cmp);
	ps.setString(5, email);
	
	int i=ps.executeUpdate();
	RequestDispatcher rd=request.getRequestDispatcher("Uhome.jsp");
	rd.include(request,response);
	out.println("<script>window.alert('Sucessfully added into cart');</script>");
	%>