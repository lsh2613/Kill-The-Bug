<%@ page import="com.example.dto.Post" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>Album example · Bootstrap v5.2</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/album/">

  <link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

  <!-- Favicons -->
  <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
  <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
  <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
  <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
  <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
  <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
  <meta name="theme-color" content="#712cf9">

  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
  <link href="css/myCSS.css" rel="stylesheet" type="text/css" />

  <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .b-example-divider {
      height: 3rem;
      background-color: rgba(0, 0, 0, .1);
      border: solid rgba(0, 0, 0, .15);
      border-width: 1px 0;
      box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
      flex-shrink: 0;
      width: 1.5rem;
      height: 100vh;
    }

    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }

    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }
  </style>


</head>
<body>

<header>
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
</header>

<main>

  <jsp:include page="static/header.jsp">
    <jsp:param name="grandTitle" value="Kill The Bug"/>
    <jsp:param name="subHeading" value="All Posts"/>
  </jsp:include>

  <%
    Connection connection = null;
    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://localhost:3306/killthebug";
    connection = DriverManager.getConnection(url, "root", "1234");
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("select * from post");
  %>
  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <%
          while (resultSet.next()){
        %>
        <div class="col cursor-pointer" onclick="location.href='post.jsp?id=<%=resultSet.getInt("id")%>'">
          <div class="card shadow-sm">
            <%
              if (resultSet.getString("imgName")==null){
            %>
              <img src="img/post/noImage.png" width="100%" height="225">
            <%
              }
              else{
            %>
              <img src="/img/post/<%=resultSet.getString("imgName")%>" width="100%" height="225">
            <%
              }
            %>
            <div class="card-body">
              <p class="card-text"><%=resultSet.getString("title")%></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
<%--                  <button type="button" class="btn btn-sm btn-outline-secondary" >View</button>--%>
<%--                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                </div>
                <small class="text-muted">Posted by <%=resultSet.getString("name")%> on <%=resultSet.getString("postDate")%></small>
              </div>
            </div>
          </div>
        </div>
        <%
          }
        %>
      </div>
    </div>
  </div>

</main>

<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
  </div>
</footer>
<%@include file="static/footer.jsp"%>
<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>


</body>
</html>
