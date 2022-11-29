<%--
  Created by IntelliJ IDEA.
  User: LeeSeungHeon
  Date: 2022-11-15
  Time: 오후 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <title>Title</title>
</head>
<body>
    <script type="text/javascript">
        function checkForm() {
            var form = document.postForm;
            if (form.title.value.length<=2) {
                alert("제목은 3자 이상이어야 합니다.");
                form.title.select();
                return false;
            }
            if (form.description.value.length==0) {
                alert("내용을 입력해주세요");
                form.description.select();
                return false;
            }
            form.submit();
        }
    </script>

    <jsp:include page="static/navigation.jsp"/>
    <header class="masthead" style="background-image: url('assets/img/home-bg.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>게시글 작성</h1>
<%--                        <span class="subheading">소제목</span>--%>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <form enctype="multipart/form-data"></form>
<%--    <div class="container px-4 px-lg-5">--%>
<%--        <div class="row gx-4 gx-lg-5 justify-content-center">--%>
<%--            <div class="col-md-10 col-lg-8 col-xl-7">--%>
<%--                <form name="postForm" action="addPost_process.jsp" method="post" enctype="multipart/form-data">--%>
<%--                    <h5> 이름: <input type="text" class="form-control" name="name"></h5><br>--%>
<%--                    <h5> 제목: <input type="text" class="form-control" name="title"></h5><br>--%>
<%--                    <h5> 설명: </h5>--%>
<%--                    <h5><textarea name="content" rows="10" cols="50" placeholder="상세 내욕을 작성하세요."></textarea></h5><br>--%>
<%--                    <h5> 파 일 : <input type="file" name="filename"></h5><br>--%>
<%--                    <h5> <button type="submit" class="btn btn-success pull-right" onclick="checkForm(); return false;">등록하기 </button></h5>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <form method="post" action="addPost_process.jsp">--%>
<%--                <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">--%>
<%--                    <thead>--%>
<%--                        <tr>--%>
<%--                            <th colspan="2" style="background-color: #eeeeee; text-align: center;">게시글 작성</th>--%>
<%--                        </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody>--%>
<%--                        <tr>--%>
<%--                            <td><input type="text" class="form-control" placeholder="작성자" name="title"></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td><input type="text" class="form-control" placeholder="게시글 제목" name="title"></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td><textarea name="content" rows="10" cols="50" placeholder="상세 내욕을 작성하세요."></textarea></td>--%>
<%--                        </tr>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--                <input type="submit" class="btn btn-primary pull-right" value="등록하기">--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
    <main class="mb-4">
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <p>게시물 등록을 통해 궁금한 것을 물어보거나 여러분들의 지식을 공유해보세요!</p>
                    <div class="my-5">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form id="contactForm" data-sb-form-api-token="API_TOKEN" name="postForm" action="addPost_process.jsp" method="post" enctype="multipart/form-data">
                            <div class="form-floating">
                                <input class="form-control" id="title" name="title" type="text" placeholder="Enter your title..." data-sb-validations="required,email" />
                                <label for="title">제목</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">제목을 작성해주세요</div>
                            </div>
                            <div class="form-floating">
                                <textarea class="form-control" id="message" name="content" placeholder="Enter your descroption here..." style="height: 12rem" data-sb-validations="required"></textarea>
                                <label for="message">상세 내용</label>
                                <div class="invalid-feedback" data-sb-feedback="message:required">상세 내용을 입력해주세요.</div>
                            </div>
                            <div class="form-floating">
                                <input class="form-control" id="imgName" name="imgName" type="file" placeholder="Enter your email..." data-sb-validations="required,email" />
                                <label for="title">파일</label><br>
                                <div class="invalid-feedback" data-sb-feedback="email:required">파일을 추가해주세요</div>
                            </div>
                            <br />

                            <button type="submit" class="btn btn-success pull-right" onclick="checkForm(); return false;">등록하기 </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <jsp:include page="static/footer.jsp"/>

</body>
</html>
