<%-- 
    Document   : contact
    Created on : Dec 4, 2017, 3:17:33 PM
    Author     : LAM PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="contact">
                    <h2 class=" contact-in">CONTACT</h2>

                    <div class="col-md-6 contact-top">
                        <h3>Info</h3>
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.6306729093167!2d106.67684821480131!3d10.83954989227875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528537efc91f3%3A0xd78866046c162226!2zMTIgTMOqIMSQ4bupYyBUaOG7jSwgUGjGsOG7nW5nIDE3LCBHw7IgVuG6pXAsIEjhu5MgQ2jDrSBNaW5o!5e0!3m2!1svi!2s!4v1513825627823" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>

                        
                        <ul class="social ">
                            <li><span><i > </i>616/12 Le Duc Tho </span></li>
                            <li><span><i class="down"> </i>(028)38940008</span></li>
                            <li><a href="mailto:lamnguyen8097@gmail.com"><i class="mes"> </i>lamnguyen8097@gmail.com</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 contact-top">
                        <h3>Want to work with me?</h3>
                        <div>
                            <span>Your Name </span>		
                            <input type="text" value="" >						
                        </div>
                        <div>
                            <span>Your Email </span>		
                            <input type="text" value="" >						
                        </div>
                        <div>
                            <span>Subject</span>		
                            <input type="text" value="" >	
                        </div>
                        <div>
                            <span>Your Message</span>		
                            <textarea> </textarea>	
                        </div>
                        <input type="submit" value="SEND" >	
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
