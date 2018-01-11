/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;


public class ManagerProductServlet extends HttpServlet {

    ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String product_id = request.getParameter("product_id");

        String url = "";
        try {
            switch (command) {

                case "delete":
                    productDAO.deleteProduct(Long.parseLong(product_id));
                    url = "/admin/manager_product.jsp";
                    break;
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        long categoryID = Long.parseLong(request.getParameter("categoryID"));
        String productName = request.getParameter("productName");
        String productImage = request.getParameter("productImage");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        String productDescription = request.getParameter("productDescription");

        String url = "", error = "";
        if (productName.equals("")) {
            error = "Please enter productName!";
            request.setAttribute("error", error);
        }
        if (productPrice == 0) {
            error = "Please enter productPrice!";
            request.setAttribute("error", error);

            try {
                if (error.length() == 0) {
                    productDAO.insertProduct(new Product(new Date().getTime(), categoryID, productName, productImage, productPrice, productDescription));
                    url = "/admin/manager_product.jsp";
                } else {
                    url = "/admin/insert_product.jsp";
                }
            } catch (Exception e) {
            }
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);

        }

    }
}
