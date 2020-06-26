<%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 25/06/20
  Time: 8:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List Employee</h1>
<div>
    <table>
        <tr>
            <th>Full Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Hobbies</th>
            <th>Country</th>
            <th>Address</th>
        </tr>
<c:forEach items="${listEmployees}" var="e">
    <td>${e.fullname}</td>
    <td>${e.email}</td>
    <td>${e.gender}</td>
    <td>${e.hobbies}</td>
    <td>${e.country}</td>
    <td>${e.address}</td>
</c:forEach>
    </table>
</div>
</body>
</html>
