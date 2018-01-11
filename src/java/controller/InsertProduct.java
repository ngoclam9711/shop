/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import connect.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HUNG PC
 */
public class InsertProduct extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String categoryID = request.getParameter("category_id");
        String productName = request.getParameter("product_name");
        String productImage = request.getParameter("product_image");
        String productPrice = request.getParameter("product_price");
        String productDescription = request.getParameter("product_description");
        String productID = "";
        try {
            ResultSet rs = new DBConnect().DataDTB("select * from product");
            while (rs.next()) {
                String s = rs.getString(1);
                productID = Long.parseLong(s) + 1 + "";
            }
            new DBConnect().SQLwork("insert into product value('" + productID + "','" + categoryID + "','" + productName + "','" + productImage + "','" + productPrice + "','" + productDescription + "')");
            response.sendRedirect("/shop/admin/manager_product.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(InsertProduct.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
