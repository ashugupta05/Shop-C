<%@include file="db.jsp" %>
<%
String img=request.getParameter("fname");
String name=(String)session.getAttribute("name");
int price=(int)session.getAttribute("price");
String cat=(String)session.getAttribute("cat");
String cmp=(String)session.getAttribute("cmp");
String qr="insert into product values(?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, name);
	ps.setInt(2, price);
	ps.setString(3, cat);
	ps.setString(4, cmp);
	ps.setString(5, img);
	int i=ps.executeUpdate();
	out.println(i+" product added");
	con.close();
%>