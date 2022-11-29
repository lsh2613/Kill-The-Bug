<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href='css/ss.css' rel='stylesheet'>
<title>KILL THE BUG</title>

<div class="cotn_principal">
    <div class="cont_centrar">

        <div class="cont_login">
            <div class="cont_info_log_sign_up">
                <p><a href="login.jsp" >Korean</a>|<a href="login_en.jsp">English</a>

                <div class="col_md_login">
                    <div class="cont_ba_opcitiy">

                        <h2>Login</h2>
                        <p>Log in and enjoy the service.</p>
                        <button class="btn_login" onclick="cambiar_login()">Login</button>
                    </div>
                </div>
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy">
                        <h2>Signup</h2>
                        <p>If you don't have an ID yet, please sign up and log in.</p>

                        <button class="btn_sign_up" onclick="cambiar_sign_up()">Signup</button>
                    </div>
                </div>
            </div>


            <div class="cont_back_info">
                <div class="cont_img_back_grey">
                    <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
                </div>

            </div>
            <div class="cont_forms" >
                <div class="cont_img_back_">
                    <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
                </div>
                <form name="loginForm" class="cont_form_login" action="login_process.jsp">
                    <a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
                    <h2>Login</h2>
                    <input type="text" placeholder="Username" name="id"/>
                    <input type="password" placeholder="Password" name="password"/>
                    <button class="btn_login" onclick="cambiar_login()">Login</button>
                </form>

                <form class="cont_form_sign_up" action="signup_process.jsp">
                    <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                    <h2>Sign up</h2>
                    <input type="text" placeholder="id" name="id" />
                    <input type="password" placeholder="pwd" name="pwd"/>
                    <button class="btn_sign_up" onclick="cambiar_sign_up()">Sign up</button>

                </form>

            </div>

        </div>
    </div>
</div>
<script src="js/login.js" type="text/javascript"></script>