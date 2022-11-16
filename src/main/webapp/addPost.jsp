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
    <title>Title</title>
</head>
<body>
    <form action="addPost_process.jsp" method="post" enctype="multipart/form-data">
        <p> 이름: <input type="text" class="form-control" name="name">
        <p> 제목: <input type="text" class="form-control" name="title">
        <p> 설명:
        <p><textarea name="content" rows="10" cols="50" placeholder="상세 내욕을 작성하세요."></textarea>
        <p> 파 일 : <input type="file" name="filename">
        <p><button type="submit" class="btn btn-success">등록하기</button>
    </form>
</body>
</html>
