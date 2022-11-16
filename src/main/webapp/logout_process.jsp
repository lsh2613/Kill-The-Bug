<%--
  Created by IntelliJ IDEA.
  User: LeeSeungHeon
  Date: 2022-11-15
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%
  session.invalidate();
  out.println("<script>alert('로그아웃되었습니다'); history.back();</script>");
  response.sendRedirect("/");
%>
