<%@ page import="com.example.dto.Post" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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
        <%
            String id = request.getParameter("id");
            int intId = Integer.parseInt(id);

            Connection connection = null;
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/killthebug";
            connection = DriverManager.getConnection(url, "root", "1234");
            Statement statement = connection.createStatement();
            ResultSet postResultSet = statement.executeQuery("select * from post where id="+id);
            postResultSet.next();
        %>
        <!-- Navigation-->
        <%@ include file="static/navigation.jsp"%>

        <!-- Page Header-->
        <header class="masthead" style="background-image: url('assets/img/post-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="post-heading">
                            <h2><%=postResultSet.getString("title")%></h2><br>
                            <span class="meta">
                                Posted by
                                <a href="#!"><%=postResultSet.getString("name")%></a>
                                 on <%=postResultSet.getString("postDate")%>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Post Content-->
        <article class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7" >

                        <%
                            if (postResultSet.getString("imgName")!=null){
                        %>
                        <img src="/img/post/<%=postResultSet.getString("imgName")%>" width="110%" height="500">
                        <%
                            }
                        %>
                        <br><br>
                        <p style='font-size: 25px'><%=postResultSet.getString("content")%>
<%--                        <p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals. The airman's earth, if free men make it, will be truly round: a globe in practice, not in theory.</p>--%>
<%--                        <p>Science cuts two ways, of course; its products can be used for both good and evil. But there's no turning back from science. The early warnings about technological dangers also come from science.</p>--%>
<%--                        <p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>--%>
<%--                        <p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That's how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p>--%>
<%--                        <p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.</p>--%>
<%--                        <h2 class="section-heading">The Final Frontier</h2>--%>
<%--                        <p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>--%>
<%--                        <p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>--%>
<%--                        <blockquote class="blockquote">The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>--%>
<%--                        <p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>--%>
<%--                        <h2 class="section-heading">Reaching for the Stars</h2>--%>
<%--                        <p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>--%>
<%--                        <a href="#!"><img class="img-fluid" src="assets/img/post-sample-image.jpg" alt="..." /></a>--%>
<%--                        <span class="caption text-muted">To go places and do things that have never been done before – that’s what living is all about.</span>--%>
<%--                        <p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>--%>
<%--                        <p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there’s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>--%>
<%--                        <p>--%>
<%--                            Placeholder text by--%>
<%--                            <a href="http://spaceipsum.com/">Space Ipsum</a>--%>
<%--                            &middot; Images by--%>
<%--                            <a href="https://www.flickr.com/photos/nasacommons/">NASA on The Commons</a>--%>
<%--                        </p>--%>
                    </div>
                </div>
            </div>
        </article>

        <hr>

        <%--comment--%>
        <main class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="my-5">
                            <h4 style="color: #0d6efd">[답변]</h4>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <%
            postResultSet.close();
            ResultSet commentResultSet = statement.executeQuery("select * from comment where p_id="+id);
            while (commentResultSet.next()) {
        %>
        <main class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="my-5" style='line-height:10%'>
                            <p style='line-height:100%; font-size: 25px'><%=commentResultSet.getString("content")%></p>
                            <p style='line-height:0%; font-size: 17px' align="right"><%=commentResultSet.getString("commentDate")%>에 작성됨
                            <p style='line-height:0%; font-size: 17px' align="right">작성자: <%=commentResultSet.getString("name")%>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <hr>

        <%
            }
        %>

        <main class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="my-5">
                            <h4 style="color: #0d6efd">[당신의 답변]</h4>
                            <form id="contactForm" data-sb-form-api-token="API_TOKEN" name="postForm" action="addComment_process.jsp" method="post" enctype="multipart/form-data">
                                <div class="form-floating">
                                    <textarea class="form-control" id="message" name="content" placeholder="Enter your descroption here..." style="height: 12rem" data-sb-validations="required"></textarea>
                                    <label for="message">내용</label>
                                    <div class="invalid-feedback" data-sb-feedback="message:required">상세 내용을 입력해주세요.</div>
                                </div>
<%--                                <div class="form-floating">--%>
<%--                                    <input class="form-control" id="imgName" name="imgName" type="file" placeholder="Enter your email..." data-sb-validations="required,email" />--%>
<%--                                    <label for="imgName">파일</label><br>--%>
<%--                                    <div class="invalid-feedback" data-sb-feedback="email:required">파일을 추가해주세요</div>--%>
<%--                                </div>--%>
                                <br />

                                <input type="hidden" name="p_id" value=<%=id%> />
                                <button type="submit" class="btn btn-success pull-right" onclick="checkForm(); return false;">등록하기 </button>
                            </form>
                        </div>
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
