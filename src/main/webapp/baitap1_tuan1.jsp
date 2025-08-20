<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Bảng Nhân 2</title>
</head>
<body>
<h1>Bảng Nhân 2</h1>
<table>
  <% for (int i = 1; i <= 10; i++) { %>
  <tr>
    <td><%= "2 x " + i + " = " + (2 * i) %></td>
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