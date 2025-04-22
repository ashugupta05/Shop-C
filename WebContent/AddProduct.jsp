<%
String name=request.getParameter("name");
String p=request.getParameter("price");
int price=Integer.parseInt(p);
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
session.setAttribute("name", name);
session.setAttribute("price", price);
session.setAttribute("cat", cat);
session.setAttribute("cmp", cmp);
%>
 Select a file to upload: <br />
      <form action = "UploadServlet.jsp" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>
