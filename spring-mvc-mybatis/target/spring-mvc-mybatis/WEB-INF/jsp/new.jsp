<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 29/06/20
  Time: 5:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
Create Post
<form:form action="save" method="post" modelAttribute="employee">

    <table cellpadding="5" border="1" >
        <tbody>
        <tr>
            <td>Full Name:</td>
            <td><form:input path="fullname" cssClass="error"/></td>
        </tr>

        <tr>
            <td>Email:</td>
            <td><form:input path="email" cssClass="error"/></td>
        </tr>

        <tr>
            <td>Gender:</td>
            <td><form:input path="gender" cssClass="error"/></td>
        </tr>

        <tr>
            <td>Hobboy:</td>
            <td><form:input path="hobbies" cssClass="error"/></td>
        </tr>

        <tr>
            <td>Country:</td>
            <td><form:input path="country" cssClass="error"/></td>
        </tr>

        <tr>
            <td>Address:</td>
            <td><form:textarea rows="4" cols="22" path="address"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="save"></td>
        </tr>
        </tbody>
    </table>
</form:form>
</body>
</html>
