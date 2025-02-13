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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Gestion des Utilisateurs</title>
</head>
<body class="bg-light">

<div class="container py-5">
    <h1 class="text-center mb-4">Insert Values</h1>
    <div class="card p-4 shadow-sm">
        <form action="controller/insert_controller.jsp">
            <div class="mb-3">
                <label class="form-label">ID:</label>
                <input type="text" name="ID" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">User Name:</label>
                <input type="text" name="user_name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Mobile:</label>
                <input type="text" name="mobile" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input type="email" name="email" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success w-100">Insert</button>
        </form>
    </div>

    <hr class="my-5">

    <h2 class="text-center mb-4">User List</h2>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>User Name</th>
                    <th>Mobile</th>
                    <th>Email</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% Read_value obj_Read_value=new Read_value();
                   List<user_Bean> list=obj_Read_value.get_value();
                   for(user_Bean obj_user_Bean : list) { %>
                <tr>
                    <td><%= obj_user_Bean.getID() %></td>
                    <td><%= obj_user_Bean.getUser_name() %></td>
                    <td><%= obj_user_Bean.getMobile() %></td>
                    <td><%= obj_user_Bean.getEmail() %></td>
                    <td><a href="edit.jsp?ID=<%=obj_user_Bean.getID()%>" class="btn btn-warning btn-sm">Edit</a></td>
                    <td><a href="controller/delete_controller.jsp?ID=<%=obj_user_Bean.getID()%>" class="btn btn-danger btn-sm">Delete</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
