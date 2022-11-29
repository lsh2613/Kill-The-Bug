package com.example.sql;

import com.example.dto.Post;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Insert {

    private static Insert insert = new Insert();

    public static Insert getInsert() {
        return insert;
    }

    public void insertPost(Post post) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/killthebug";
            connection = DriverManager.getConnection(url, "root", "1234");

            String sql = "insert into post (name, postDate, title, content, imgName) values (?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, post.getName());
            preparedStatement.setString(2, post.getPostDate());
            preparedStatement.setString(3, post.getTitle());
            preparedStatement.setString(4, post.getContent());
            preparedStatement.setString(5, post.getImgName());

            int cnt = preparedStatement.executeUpdate();
            if (cnt == 0) {
                System.out.println("데이터 입력 실패");
            } else {
                System.out.println("데이터 입력 성공");
            }

        } catch (SQLException e) {
            System.out.println("에러" + e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (connection != null & connection.isClosed()) {
                    connection.close();
                }
                if (preparedStatement != null && !preparedStatement.isClosed()) {
                    preparedStatement.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void insertComment(String name, String content, int p_id) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/killthebug";
            connection = DriverManager.getConnection(url, "root", "1234");

            String sql = "insert into comment (name, content, p_id, commentDate) values (?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, content);
            preparedStatement.setInt(3, p_id);

            Date date = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd HH:mm");
            String commentDate = formatter.format(date);

            preparedStatement.setString(4, commentDate);

            int cnt = preparedStatement.executeUpdate();
            if (cnt == 0) {
                System.out.println("데이터 입력 실패");
            } else {
                System.out.println("데이터 입력 성공");
            }

        } catch (SQLException e) {
            System.out.println("에러" + e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (connection != null & connection.isClosed()) {
                    connection.close();
                }
                if (preparedStatement != null && !preparedStatement.isClosed()) {
                    preparedStatement.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
