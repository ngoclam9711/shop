<%-- 
    Document   : footer
    Created on : Dec 4, 2017, 2:25:04 PM
    Author     : LAM PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>
        <div class="footer">
            <div class="col-md-6 contact-top">
                <h3>Map</h3>
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.6306729093167!2d106.67684821480131!3d10.83954989227875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528537efc91f3%3A0xd78866046c162226!2zMTIgTMOqIMSQ4bupYyBUaOG7jSwgUGjGsOG7nW5nIDE3LCBHw7IgVuG6pXAsIEjhu5MgQ2jDrSBNaW5o!5e0!3m2!1svi!2s!4v1513825627823" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-md-6 contact-top">
                <h3>Shop Gaming Gear HCM</h3>
                <ul class="social ">
                    <li><span><i > </i>12 Le Duc Tho </span></li>
                    <li><span><i class="down"> </i>(028)38940008</span></li>
                    <li><a href="mailto:lamnguyen8097@gmail.com"><i class="mes"> </i>lamnguyen8097@gmail.com</a></li>
                </ul>	
                <h3> Working time: 7:00AM - 9:00PM </h3>
            </div>


        </div>
        <script type='text/javascript'>window._sbzq || function (e) {
                e._sbzq = [];
                var t = e._sbzq;
                t.push(["_setAccount", 74882]);
                var n = e.location.protocol == "https:" ? "https:" : "http:";
                var r = document.createElement("script");
                r.type = "text/javascript";
                r.async = true;
                r.src = n + "//static.subiz.com/public/js/loader.js";
                var i = document.getElementsByTagName("script")[0];
                i.parentNode.insertBefore(r, i)
            }(window);</script>
    </body>
</html>
