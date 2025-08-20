<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bảng Cửu Chương</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="work">
<h1 class="h1work">Bảng Cửu Chương</h1>
<table class="math-table">
    <tr>
        <% for(int i=2; i<=9; i++) { %>
        <th>Bảng <%= i %></th>
        <% } %>
    </tr>
    <% for(int j=1; j<=10; j++) { %>
    <tr>
        <% for(int i=2; i<=9; i++) { %>
        <td><%= j + " x " + i + " = " + (j*i) %></td>
        <% } %>
    </tr>
    <% } %>
</table>
<p><a href="week1.jsp" style="
    display:inline-block;
    padding:8px 12px;
    background:#6a5acd;
    color:white;
    text-decoration:none;
    border-radius:6px;
    font-family:Arial, sans-serif;
">⬅ Quay về Tuần 1</a></p>
</body>
</html>