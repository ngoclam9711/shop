<%-- 
    Document   : manager_category
    Created on : Dec 21, 2017, 4:16:09 PM
    Author     : HUNG PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.DBConnect"%>
<%@page import="model.Product"%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Management</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>



        <jsp:include page="header.jsp"></jsp:include>
            <div id="wrapper">
            <jsp:include page="menu.jsp"></jsp:include>
                <div id="rightContent">
                    <h3>Product Management</h3>
                    <a href="${root}/admin/insert_product.jsp" style="font-size: 15px;" require="">Add products</a>
                <%
                    DBConnect con = new DBConnect();
                    ResultSet rs = con.DataDTB("select*from product");
                    Product product = new Product();
                %>
                <table class="data">
                    <thead>
                        <tr class="data">
                            <th class="data" width="30px">No</th>
                            <th class="data">Category ID</th>
                            <th class="data">Product Name</th> 
                            <th class="data">Product Image</th>
                            <th class="data">Product Price</th>
                            <th class="data">Product Description</th>
                            <th class="data" width="100px">Option</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            while (rs.next()) {
                        %>
                        <tr class="data">
                            <td class="data" width="30px"><%=rs.getLong(1)%></td>
                            <td class="data" ><%=rs.getLong(2)%></td>
                            <td class="data" ><%=rs.getString(3)%></td>                            
                            <td class="data" ><%=rs.getString(4)%></td>
                            <td class="data" ><%=rs.getDouble(5)%></td>
                            <td class="data" ><%=rs.getString(6)%></td>
                           
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
            <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
