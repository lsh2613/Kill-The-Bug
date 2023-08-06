<%@ page import="com.example.dto.Post" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>KILL THE BUG</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <style>
            h3.hiddenLine {
                line-height: 1.6;
                max-height: 3.2em;
                overflow: hidden;
                display: -webkit-box;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;
            }
            h2.hiddenLine {
                line-height: 1.6;
                max-height: 1.6em;
                overflow: hidden;
                display: -webkit-box;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;
            }
        </style>
    </head>
    <body>
        <!-- Navigation-->
        <%@ include file="static/navigation.jsp"%>

        <!-- Page Header-->
        <jsp:include page="static/header.jsp">
            <jsp:param name="grandTitle" value="Kill The Bug"/>
            <jsp:param name="subHeading" value="5 Latest Posts"/>
        </jsp:include>

        <%

            Connection connection = null;
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/killthebug";
            connection = DriverManager.getConnection(url, "root", "1234");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from post");

            // 전체 게시글 갯수 반환
            int cnt=0;
            while (resultSet.next()){
                cnt++;
            }
        %>
        <!-- Main Content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <!-- Post preview-->
                    <%
                        resultSet = statement.executeQuery("select * from post");
                        while (resultSet.next()){
                            if (cnt <= 5) {

                    %>
                    <div class="post-preview">
                        <a href="post.jsp?id=<%=resultSet.getInt("id")%>">
                            <h2 class="post-title hiddenLine"><%=resultSet.getString("title")%></h2>
                            <h3 class="post-subtitle hiddenLine"><%=resultSet.getString("content")%></h3>
                        </a>
                        <p class="post-meta">
                            Posted by
                            <%=resultSet.getString("postDate")%>
                            on <%=resultSet.getString("name")%>
                        </p>
                    </div>
                    <%
                            }
                            cnt--;
                        }
                    %>
                    <hr class="my-4" />
                    <!-- Pager-->
                    <div class="d-flex justify-content-end mb-4">
                        <li class="list-inline-item">
                            <a class="btn btn-primary text-uppercase" href="allPosts.jsp">전체 게시글 →</a>
                        </li>
                        <%
                            if (loginId!=null){
                        %>
                        <li class="list-inline-item">
                            <a class="btn btn-primary text-uppercase" href="addPost.jsp">게시글 작성</a>
                        </li>
                        <%
                            }
                        %>
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
