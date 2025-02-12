<%@page import="CRUD.Insert_value"%>
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
String user_name=request.getParameter("user_name");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");





Insert_value obj_Insert_value=new Insert_value();
obj_Insert_value.insert_value(ID, user_name, mobile, email);
%>
<script type="text/javascript">
window.location.href="http://localhost:8081/test1/insert_value.jsp";
</script>

</body>
</html>