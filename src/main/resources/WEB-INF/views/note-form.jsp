<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Notes App - Add New Note</title>
</head>
<body>
<h2>Add New Note</h2>
<form action="/saveNote" method="post">
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" required>
    <br>
    <label for="content">Content:</label>
    <textarea id="content" name="content" required></textarea>
    <br>
    <input type="submit" value="Save">
</form>
<br>
<a href="/">Back to Notes List</a>
</body>
</html>
