<%@include file="db.jsp" %>
<%
String name=request.getParameter("name");
String qr="delete from product where name=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, name);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("Show.jsp");
rd.include(request, response);
out.println(i+" product deleted");

%>