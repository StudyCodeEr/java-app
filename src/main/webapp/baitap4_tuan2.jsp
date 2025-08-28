<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài 4 - Tính giai thừa</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="work">
<h1>Tính giai thừa</h1>

<form method="post" action="baitap4_tuan2.jsp" class="input-form">
    <label for="so">Nhập số từ 1 - 10:</label>
    <input type="text" id="so" name="so" required>
    <button type="submit">Tính</button>
</form>

<%
    String input = request.getParameter("so");
    if (input != null) {
        try {
            int n = Integer.parseInt(input.trim());

            if (n < 0 || n > 10) {
%>
<div class="result-box">
    <p style="color:red;">Vui lòng nhập số từ 0 đến 10!</p>
</div>
<%
} else {
    long gt = 1;
    for (int i = 1; i <= n; i++) {
        gt *= i;
    }
%>
<div class="result-box">
    <p><strong><%= n %>! = <%= gt %></strong></p>
</div>
<%
    }
} catch (NumberFormatException e) {
%>
<div class="result-box">
    <p style="color:red;">Bạn phải nhập số nguyên hợp lệ!</p>
</div>
<%
        }
    }
%>

<p><a href="week2.jsp" class="back-link">⬅ Quay về Tuần 2</a></p>
</body>
</html>
