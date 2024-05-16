<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/17/2024
  Time: 12:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>User List</h2>
<a href="UserController?action=new">Add New User</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Email</th>
        <th>Password</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
        <tr>
            <td>${user.id}</td>
            <td>${user.email}</td>
            <td>${user.password}</td>
            <td>
                <a href="UserController?action=edit&id=${user.id}">Edit</a>
                <a href="UserController?action=delete&id=${user.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
