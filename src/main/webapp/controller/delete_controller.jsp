<%@page import="CRUD.delete_value"%>
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
String ID=request.getParameter("ID");

 delete_value obj_delete_value=new delete_value();
 obj_delete_value.delete_value(ID);



%>
<script type="text/javascript">
window.location.href="http://localhost:8081/test1/insert_value.jsp";
</script> 
</body>
</html>