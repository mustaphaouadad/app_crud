<%@page import="CRUD.Edit_value"%>
<%@page import="common.user_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Modifier des Utilisateurs</title>
</head>
<body class="bg-light">
<%
String ID=(String)request.getParameter("ID");
Edit_value obj_Edit_value=new Edit_value();
user_Bean obj_user_Bean=obj_Edit_value.get_value_of(ID);
%>

<div class="container py-5">
    <h1 class="text-center mb-4">Modifier Utilisateur</h1>
    <div class="card p-4 shadow-sm">
        <form action="controller/edit_controller.jsp">
            <div class="mb-3">
                <label class="form-label">ID:</label>
                <input type="text" name="ID" value="<%=ID%>" class="form-control" readonly>
            </div>
            <div class="mb-3">
                <label class="form-label">User Name:</label>
                <input type="text" name="user_name" value="<%= obj_user_Bean.getUser_name()%>" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Mobile:</label>
                <input type="text" name="mobile" value="<%= obj_user_Bean.getMobile()%>" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input type="text" name="email" value="<%= obj_user_Bean.getEmail()%>" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Modifier</button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>