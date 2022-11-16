package com.example.dto;


import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class Post {
    static int seqeunce = 0;
    private int id;
    private String name;
    private String title;
    private String content;
    private String postDate;
    private String imgName;

    //todo 찜, 댓글 기능 추가가


    public String getImgName() {
        return imgName;
    }

    public void setImgName(String imgName) {
        this.imgName = imgName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPostDate() {
        return postDate;
    }

    public void setPostDate(String postDate) {
        this.postDate = postDate;
    }

    public Post() {
    }

    public Post(String name,String title, String content) {
        this.id = ++seqeunce;
        this.name = name;
        this.title = title;
        this.content = content;

        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd HH:mm");

        this.postDate = formatter.format(date);
    }
}
