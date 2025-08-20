<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Bảng Nhân 2</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="work">
<h1 class="h1work">Bảng Nhân 2</h1>
<table class="math-table">
  <tr>
    <th>Biểu thức</th>
    <th>Kết quả</th>
  </tr>
  <% for (int i = 1; i <= 10; i++) { %>
  <tr>
    <td><%= i %> x 2</td>
    <td><%= i * 2 %></td>
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