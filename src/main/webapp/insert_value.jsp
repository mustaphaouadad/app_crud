<%@page import="common.user_Bean"%>
<%@page import="CRUD.Read_value"%>
<%@page import="java.util.List, java.util.Iterator"%>
<%@page import="common.user_Bean, CRUD.Read_value, java.util.List, java.util.Iterator"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Insert Values</h1>
<form action="controller/insert_controller.jsp">
ID:<input type="text" name="ID"><br>
User_name:<input type="text" name="user_name"><br>
Mobile:<input type="text" name="mobile"><br>
Email:<input type="text" name="email"><br>
<input type="submit" value="Insert">
</form>


<hr>

<%
Read_value obj_Read_value=new Read_value();
  List<user_Bean> list=obj_Read_value.get_value();
  
  Iterator<user_Bean>  it_list=list.iterator();
  %>
  <table border="1">
  <% 
  while(it_list.hasNext()){
	  user_Bean obj_user_Bean=new user_Bean();
	  obj_user_Bean=it_list.next();
	  %>
	  <tr>
	  <td><%= obj_user_Bean.getID()  %></td>
	  <td><%=obj_user_Bean.getUser_name()  %></td>
	  <td><%=obj_user_Bean.getMobile()  %></td>
	  <td><%= obj_user_Bean.getEmail()  %></td>
	  
	  <td> <a href="edit.jsp?ID=<%=obj_user_Bean.getID()%>" >Edit</a></td>
	  
	  <td> <a href="controller/delete_controller.jsp?ID=<%=obj_user_Bean.getID()%>" >Delete</a></td>
	  
	  
	  
	  </tr>
	  
	  
	<%  
  }
  %> 

</table>
</center>

</body>
</html>