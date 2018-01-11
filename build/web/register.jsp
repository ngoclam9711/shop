
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#email").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });

                function check_username_ajax(username) {
                    $("#user-result").html('<img src="img/ajax-loader.gif" />');
                    $.post('CheckEmailServlet', {'username': username}, function (data) {
                        $("#user-result").html(data);
                    });
                }
            });
            var check = function () {
                if (document.getElementById('pass').value ==
                        document.getElementById('repass').value) {
                    document.getElementById("buttonId").style.display = 'block';
                    document.getElementById('message').style.color = 'green';
                    document.getElementById('message').innerHTML = 'Matching';
                } else {
                    document.getElementById("buttonId").style.display = 'none';
                    document.getElementById('message').style.color = 'red';
                    document.getElementById('message').innerHTML = 'Not matching';
                }
            }
        </script>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="account">
                    <h2 class="account-in">Register</h2>
                    <form action="UsersServlet" method="POST">
                        <div>
                            <span class="word">Username *</span>
                            <input type="text" name="email" id="email" placeholder="example@email.com">
                            <span id="user-result"></span>
                        </div> 	
                        <div> 
                            <span class="word">Password *</span>
                            <input type="password" name="pass" id="pass" onkeyup='check();'>
                            <span></span>
                        </div>	
                        <div> 
                            <span class="word">Re - pass*</span>
                            <input type="password" name="repass" id="repass" onkeyup='check();'>
                            <span id='message'</span>
                        </div>
                        <input type="hidden" value="insert" name="command" >
                        <input type="submit" value="Register" id="buttonId"> 
                    </form>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>


    </body>
</html>
