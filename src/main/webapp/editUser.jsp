<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/17/2024
  Time: 12:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
h2>Edit User</h2>
<form action="UserController?action=update" method="post">
    <input type="hidden" name="id" value="${user.id}">
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" value="${user.email}">
    <br>
    <label for="password">Password:</label>
    <input type="text" id="password" name="password" value="${user.password}">
    <br>
    <input type="submit" value="Update">
</form>
<a href="UserController?action=list">Back to List</a>
</body>
</html>
