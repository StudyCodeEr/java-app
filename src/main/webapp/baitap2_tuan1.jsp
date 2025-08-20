<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Bài 2</title>
</head>
<body>
<h1>Bảng Nhân 2</h1>
<table>
  <tr>
    <th>Biểu thức</th>
    <th>Kết quả</th>
  </tr>
  <% int[] numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    for (int i : numbers) {
      int kq = i * 2; %>
  <tr>
    <td><%= i %> x 2</td>
    <td><%= (i % 2 == 1) ? kq : "?" %></td>
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