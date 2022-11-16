<%@ page import="com.example.dto.PostRepository" %>
<%@ page import="com.example.dto.Post" %>
<%@ page import="javax.naming.Name" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="javax.management.loading.MLet" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.File" %>
<%
    request.setCharacterEncoding("utf-8");

    MultipartRequest multi = new MultipartRequest(request, "C:\\Users\\Lee Seung Heon\\Desktop\\Projects\\IntelliJProject\\KillTheBug\\src\\main\\webapp\\img",
            5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
    request.setCharacterEncoding("utf-8");
    String name = multi.getParameter("name");
    String title = multi.getParameter("title");
    String content = multi.getParameter("content");

    Enumeration files = multi.getFileNames();

    String imgName=null;
    while (files.hasMoreElements()) {
        String element = (String) files.nextElement();
        imgName = multi.getOriginalFileName(element);
    }

    PostRepository instance = PostRepository.getInstance();
    Post post = new Post(name, title, content);
    post.setImgName(imgName);
    instance.addBook(post);

    response.sendRedirect("post.jsp?id=" + post.getId());
%>