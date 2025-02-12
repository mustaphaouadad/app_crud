<%@page import="CRUD.Edit_value"%>
<%@page import="common.user_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String ID=(String)request.getParameter("ID");
Edit_value obj_Edit_value=new Edit_value();

user_Bean obj_user_Bean=obj_Edit_value.get_value_of(ID);

%>




<center>

<h1>Edut values</h1>

<form action="controller/edit_controller.jsp">
ID:<input type="text" name="ID" value="<%=ID%>"><br>
User_name:<input type="text" name="user_name" value="<%= obj_user_Bean.getUser_name()%>"><br>
Mobile:<input type="text" name="mobile" value="<%= obj_user_Bean.getMobile()%>"><br>
Email:<input type="text" name="email" value="<%= obj_user_Bean.getEmail()%>"><br>
<input type="submit" value="Edit">
</form>
</center>

</body>
</html>