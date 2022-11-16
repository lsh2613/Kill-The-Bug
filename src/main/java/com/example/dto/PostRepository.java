package com.example.dto;

import java.util.ArrayList;

public class PostRepository {

    ArrayList<Post> listOfPosts = new ArrayList<>();

    private static PostRepository instance = new PostRepository();

    public static PostRepository getInstance() {
        return instance;
    }
    public ArrayList<Post> getAllPosts() {
        return listOfPosts;
    }

    public Post getPostById(int id) {

        return listOfPosts.get(id);
    }

    public PostRepository(){
        String content = "테스트1";
        Post post = new Post("이승헌", "제목1", content);
        post.setPostDate("2022.11.15 01:23");
        post.setImgName("1_jstl.PNG");
        listOfPosts.add(post);

        content = "테스트2";
        post = new Post("강정수", "제목2", content);
        post.setPostDate("2022.11.18 17:46");
        listOfPosts.add(post);

        content = "테스트3";
        post = new Post("추현창", "제목3", content);
        post.setPostDate("2022.11.19 21:44");
        listOfPosts.add(post);
    }

    public void addBook(Post post) {
        listOfPosts.add(post);
    }

}
