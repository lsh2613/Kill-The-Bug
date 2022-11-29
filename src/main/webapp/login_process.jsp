<%@ page import="com.example.dto.Login" %><%--
  Created by IntelliJ IDEA.
  User: LeeSeungHeon
  Date: 2022-11-15
  Time: 오전 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    int flag=0;
    if (id.equals("test") && password.equals("test") || id.equals("lsh2613") && password.equals("1234") ||
            id.equals("cngusckd") && password.equals("1234") || id.equals("rkdwjdtn") && password.equals("1234") ||
            id.equals("qkrrjs") && password.equals("1234") || id.equals("alswnsrl") && password.equals("1234") ||
            id.equals("rnwodnr") && password.equals("1234") || id.equals("djagmltmd") && password.equals("1234")){
        session.setAttribute("loginId", id);
%>
<%
    response.sendRedirect("/");
    }
    if (Login.loginInfo.get(id) != null) {
        if (Login.loginInfo.get(id).equals(password)) {
            session.setAttribute("loginId", id);
            response.sendRedirect("/");
        }
    }
%>
<script>
    alert('로그인 아이디와 비밀번호를 확인하세요');
</script>
<jsp:include page="login.jsp"></jsp:include>