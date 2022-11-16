<%@ page import="com.example.dto.Post" %>
<%@ page import="com.example.dto.PostRepository" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Clean Blog - Start Bootstrap Theme</title>
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
        <!-- Navigation-->
        <%@ include file="static/header.jsp"%>

        <!-- Page Header-->
        <header class="masthead" style="background-image: url('assets/img/home-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="site-heading">
                            <h1>대제목</h1>
                            <span class="subheading">소제목</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <%
            PostRepository dao = PostRepository.getInstance();
        %>
        <!-- Main Content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <!-- Post preview-->
                    <%
                        for (Post post : dao.getAllPosts()) {
                    %>
                    <div class="post-preview">
                        <a href="post.jsp?id=<%=post.getId()%>">
                            <h2 class="post-title"><%=post.getTitle()%></h2>
                            <h3 class="post-subtitle"><%=post.getContent()%></h3>
                        </a>
                        <p class="post-meta">
                            Posted by
                            <%=post.getName()%>
                            on <%=post.getPostDate()%>
                        </p>
                    </div>
                    <%
                        }
                    %>
                    <!-- Divider-->
<%--                    <hr class="my-4" />--%>
<%--                    <!-- Post preview-->--%>
<%--                    <div class="post-preview">--%>
<%--                        <a href="post.jsp"><h2 class="post-title">I believe every human has a finite number of heartbeats. I don't intend to waste any of mine.</h2></a>--%>
<%--                        <p class="post-meta">--%>
<%--                            Posted by--%>
<%--                            <a href="#!">Start Bootstrap</a>--%>
<%--                            on September 18, 2022--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                    <!-- Divider-->--%>
<%--                    <hr class="my-4" />--%>
<%--                    <!-- Post preview-->--%>
<%--                    <div class="post-preview">--%>
<%--                        <a href="post.jsp">--%>
<%--                            <h2 class="post-title">Science has not yet mastered prophecy</h2>--%>
<%--                            <h3 class="post-subtitle">We predict too much for the next year and yet far too little for the next ten.</h3>--%>
<%--                        </a>--%>
<%--                        <p class="post-meta">--%>
<%--                            Posted by--%>
<%--                            <a href="#!">Start Bootstrap</a>--%>
<%--                            on August 24, 2022--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                    <!-- Divider-->--%>
<%--                    <hr class="my-4" />--%>
<%--                    <!-- Post preview-->--%>
<%--                    <div class="post-preview">--%>
<%--                        <a href="post.jsp">--%>
<%--                            <h2 class="post-title">Failure is not an option</h2>--%>
<%--                            <h3 class="post-subtitle">Many say exploration is part of our destiny, but it’s actually our duty to future generations.</h3>--%>
<%--                        </a>--%>
<%--                        <p class="post-meta">--%>
<%--                            Posted by--%>
<%--                            <a href="#!">Start Bootstrap</a>--%>
<%--                            on July 8, 2022--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                    <!-- Divider-->--%>
                    <hr class="my-4" />
                    <!-- Pager-->
                    <div class="d-flex justify-content-end mb-4">
                        <li class="list-inline-item">
                            <a class="btn btn-primary text-uppercase" href="allPosts.jsp">이전 게시글 →</a>
                        </li>
                        <li class="list-inline-item">
                            <a class="btn btn-primary text-uppercase" href="addPost.jsp">게시글 작성</a>
                        </li>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer-->
        <%@include file="static/footer.jsp"%>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>