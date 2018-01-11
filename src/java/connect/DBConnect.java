/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {

    public static Connection getConnection() {
        Connection cons = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cons = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/shop", "root", "ngoclam97");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cons;
    }

    public void SQLwork(String sql) throws SQLException {
        Connection cons = DBConnect.getConnection();
        Statement st = cons.createStatement();
        st.executeUpdate(sql);
    }

    public ResultSet DataDTB(String sql) throws SQLException {
        Connection cons = DBConnect.getConnection();
        Statement st = cons.createStatement();
        ResultSet rs = st.executeQuery(sql);
        return rs;
    }

    public static void main(String[] args) {
        System.out.println(getConnection());
    }

}
