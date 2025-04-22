
<%
String email=(String) session.getAttribute("id");
out.println("Welcome "+email);
%>
<%@include file="db.jsp" %>
<a href="Logout.jsp">Logout</a>
<%
String qr="select * from cart where email=?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,email);
ResultSet rs=ps.executeQuery();
int total = 0;
if(rs.next())
{
	do{
	String name=rs.getString("name");
	int price=rs.getInt("price");
	String cat=rs.getString("cat");
	String cmp=rs.getString("cmp");
	total = total+price;
	%>
	<div style="height: 300px;width: 250px;background-color: rgba(100,100,100,0.5);border:2px solid black;float: left;text-align: center;margin-left: 2px"">
	<h1>Name :<%=name %></h1>
	<h2>Price :<%=price %></h2>
	<h2>Category :<%=cat %></h2>
	<h2>Company :<%=cmp %></h2>
	</div>
	<% 
	}while(rs.next());
}
	else{
		out.println("no record found");
	}
	%>
	<br></br>
	<h2 align="center">Total Amount : <%=total %></h2>
	<br></br>
	<a href="https://www.paypal.com/signin">Checkout</a>