<%--
  Created by IntelliJ IDEA.
  User: LeeSeungHeon
  Date: 2022-11-21
  Time: 오전 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("utf-8");
    String grandTitle = request.getParameter("grandTitle");
    String subHeading = request.getParameter("subHeading");
%>

<header class="masthead" style="background-image: url('assets/img/home-bg.jpg')">
    <div class="container position-relative px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-md-10 col-lg-8 col-xl-7">
                <div class="site-heading">
                    <h1><%=grandTitle%></h1>
                    <br>
                    <span class="subheading"><%=subHeading%></span>
                </div>
            </div>
        </div>
    </div>
</header>
