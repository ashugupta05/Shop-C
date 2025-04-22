<%@include file="db.jsp" %>
<%
String name=request.getParameter("name");
String p=request.getParameter("price");
int price=Integer.parseInt(p);
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
String qr="update product set price=?,cat=?,cmp=? where name=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(4, name);
ps.setInt(1, price);
ps.setString(2, cat);
ps.setString(3, cmp);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("Show.jsp");
rd.include(request, response);
out.println(i+" product updated");
%>