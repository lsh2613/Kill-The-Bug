<%@ page import="com.example.dto.Login" %><%--
  Created by IntelliJ IDEA.
  User: LeeSeungHeon
  Date: 2022-11-29
  Time: 오전 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    Login.loginInfo.put(id, pwd);
%>
<script>
    alert('회원가입을 축하드립니다!');
</script>
<jsp:include page="login.jsp"></jsp:include>
</body>
</html>
