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
    </head>
    <body>
        <!-- Navigation-->
        <%@ include file="static/navigation.jsp"%>

        <!-- Page Header-->
        <jsp:include page="static/header.jsp">
            <jsp:param name="grandTitle" value="This is Kill The Bug Web Site"/>
            <jsp:param name="subHeading" value="created by Lee Seung Heon"/>
        </jsp:include>


        <!-- Main Content-->
        <main class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <p> 이 웹 사이트는 지능웹설계 강의 프로젝트로 경기대학교 18학번 컴퓨터공학부 이승헌에 의해 제작되었습니다.

                        <p> IT 관련을 주제로 구현하기 위해 많이 고민 하다가 제가 자주 이용하던 stackoverflow 같은 웹 사이트를 구현하고자 했습니다.

                        <p> 부트스트랩을 가져와 코드를 커스터마이즈 해서 front를 구현하였고 IntelliJ의 gradle 프로젝트 구조로 JDBC를 활용하여 MYSQL에 연동하였으며 렌더링은 JSP를 이용하였습니다.

                        <p> 로그인을 해야 게시글을 작성할 수 있습니다.

                        <p> 로그인 후 여러분들의 코딩 지식을 공유해주세요!
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer-->
        <%@include file="static/footer.jsp"%>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
