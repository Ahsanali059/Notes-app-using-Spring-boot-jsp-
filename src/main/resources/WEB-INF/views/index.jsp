<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Notes App</title>
</head>
<body>
<h2>Notes List</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Content</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="note" items="${notes}">
        <tr>
            <td>${note.id}</td>
            <td>${note.title}</td>
            <td>${note.content}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a href="/showForm">Add New Note</a>
</body>
</html>
