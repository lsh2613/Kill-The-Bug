<%--
  Created by IntelliJ IDEA.
  User: LeeSeungHeon
  Date: 2022-11-15
  Time: 오후 9:04
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
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