<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Xin Chào</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="work">
<h1>Kết quả</h1>

<%
  String ten = request.getParameter("ten");
  if (ten != null && !ten.trim().isEmpty()) {
%>
<div class="result-box">
  <p>Xin chào bạn: <strong><%= ten %></strong></p>
</div>
<%
} else {
%>
<div class="result-box">
  <p style="color:red;">Bạn chưa nhập tên!</p>
</div>
<%
  }
%>

<p><a href="baitap5_tuan2_NhapThongTin.jsp" class="btn">Nhập lại</a></p>
<p><a href="week2.jsp" class="back-link">⬅ Quay về Tuần 2</a></p>
</body>
</html>
