<%
String email=(String) session.getAttribute("id");
out.println("welcome "+email);
%>
<a href="Logout.jsp">Logout</a>
<a href="viewcart.jsp">Viewcart</a>
<br></br>
<%@include file="db.jsp"%>
<%
   String qr="select * from product";
   Statement st = con.createStatement();
   ResultSet rs = st.executeQuery(qr);
   if(rs.next())
   {
	   do{
		   String name = rs.getString("name");
		   int price = rs.getInt("price");
		   String cat = rs.getString("cat");
		   String cmp = rs.getString("cmp");
		   String img= rs.getString("img");
	   %>
	   <div style="height: 300px;width: 250px;background-color: rgba(100,100,100,0.5);border:2px solid black;float: left;text-align: center;margin-left:2px"">
	  <img src="<%=img  %>" alt="" height="100px" width="100px" />
	   <h2>Name : <%=name %></h2>
	   <h2>Price : <%=price %></h2>
	   <h2>Category : <%=cat %></h2>
	   <h2>Company : <%=cmp %></h2>
	   <a href="https://www.paypal.com/signin">Buy Now</a><br>
	   <a href="addcart.jsp?name=<%=name%>&price=<%=price%>&cat=<%=cat%>&cmp=<%=cmp%>">AddToCart</a>
	   </div>
	   <%
	   }while(rs.next());
   }
   else{
		   out.println("no records found");
	   }
   %>