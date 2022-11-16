<%--
  Created by IntelliJ IDEA.
  User: LeeSeungHeon
  Date: 2022-11-15
  Time: 오전 10:22
  To change this template use File | Settings | File Templates.
--%>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    if (id.equals("test") && password.equals("test")) {
        session.setAttribute("id", id);
        session.setAttribute("password", password);
%>
    <script type="text/javascript">

        alert("로그인 성공 !!.");

    </script>
<%
    response.sendRedirect("/");
    }
%>