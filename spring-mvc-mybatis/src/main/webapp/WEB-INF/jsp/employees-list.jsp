<%@ page import="com.example.mybatis.modal.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 29/06/20
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<body>
<h3><a href="add">Add Employee</a></h3>

<table border="1" class="table table-striped table-bordered">
    <thead class="thead-dark">
    <tr>
        <th>Full Name</th>
        <th>Email</th>
        <th>Gender</th>
        <th>Hobbies</th>
        <th>Country</th>
        <th>Address</th>
        <th>Actions</th>
    </tr>
    </thead>
        <% List<Employee> results = (List<Employee>) request.getAttribute("employeeList");%>
        <% for (Employee employee : results) {%>
    <tbody>
    <tr>
        <td><%= employee.getFullname()%></td>
        <td> <%= employee.getEmail()%></td>
        <td><%= employee.getGender()%></td>
        <td> <%= employee.getCountry()%></td>
        <td> <%= employee.getAddress()%></td>
        <td><%= employee.getHobbies()%></td>
        <td><a href="edit?id=<%=employee.getId()%>">Edit</a> | <a href="delete/<%=employee.getId()%>">Delete</a></td>
    </tr>
    </tbody>
    <%}%>
</table>
</body>
</html>
