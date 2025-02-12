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
String user_name=request.getParameter("user_name");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");

user_Bean obj_user_Bean=new  user_Bean();
obj_user_Bean.setID(ID);
obj_user_Bean.setUser_name(user_name);
obj_user_Bean.setMobile(mobile);
obj_user_Bean.setEmail(email);

Edit_value obj_Edit_value=new Edit_value();
 obj_Edit_value.edit_user(obj_user_Bean);




%>
<script type="text/javascript">
window.location.href="http://localhost:8081/test1/insert_value.jsp";
</script> 
</body>
</html>