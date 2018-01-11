

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>JSP Page</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Product information</h3>
                    <form action="/shop/InsertProduct" method="post">
                        <table width="95%">
                            <tr>
                                <td style="float: right"><b>Category ID</b></td>
                                <td><input type="text" class="sedang" name="category_id"></td> 
                            </tr>
                            <tr>
                                <td style="float: right"><b>Product Name</b></td>
                                <td><input type="text" class="sedang" name="product_name"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Product Image</b></td>
                                <td><input type="text" class="sedang" name="product_image"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Product Price</b></td>
                                <td><input type="text" class="sedang" name="product_price"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Product Description</b></td>
                                <td><input type="text" class="sedang" name="product_description"></td>
                            </tr>
                            <tr><td>
                                    <input type="submit" class="button"style="float:right;" value="Save data">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>
    </body>
</html>
