package com.example.webapplication;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginBean {


    public boolean checkLogin(String usr, String pwd) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = ConnectionSQL.getMySQLConnection();
            if (conn == null) {
                System.out.println("Không thể kết nối đến cơ sở dữ liệu.");

            }

            String query = "SELECT * FROM users WHERE email = ? AND password = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, usr);
            stmt.setString(2, pwd);

            rs = stmt.executeQuery();

            if (rs.next()) {
                return true;
            } else {
                System.out.println("Login false!!!!!");
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return equals(e);
        } finally {
            // Đảm bảo rằng tài nguyên được đóng đúng cách
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
