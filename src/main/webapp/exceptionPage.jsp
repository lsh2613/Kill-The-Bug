<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta charset="utf-8">
    <title>Error</title>


    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
</head>

<body>
<%--<%@ include file="static/navigation.jsp" %>--%>

<%!
    String main = "잘못된 접근입니다.";
%>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light" id="mainNav" style="background-color: #7c7f84">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">Kill The Bug</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="about.jsp">About</a></li>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="contact.jsp">Contact</a></li>
                <%
                    Object loginId = session.getAttribute("loginId");
                    if (loginId==null){
                %>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="login.jsp" style="color: #0dcaf0">Login</a></li>
                <%
                }else {
                %>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="logout_process.jsp" style="color: #0dcaf0">Logout</a></li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>

<br><br><br>
<div class="jumbotron">
    <div class="container">
        <h1 class = "display-3"><%=main %></h1>
    </div>
</div>

<main role="main">
    <div class="contaimer">
        <div class="text-center">
            <p> <a href="index.jsp" class="btn btn-secondary"> 메인 화면 &raquo;</a>
                <%--<h3><%@ include file="date.jsp" %></h3>--%>
        </div>
    </div>
    <%@ include file="static/footer.jsp" %>
</main>

</body>
</html>