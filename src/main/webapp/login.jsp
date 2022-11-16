<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href='css/ss.css' rel='stylesheet'>

<div class="cotn_principal">
    <div class="cont_centrar">

        <div class="cont_login">
            <div class="cont_info_log_sign_up">
                <div class="col_md_login">
                    <div class="cont_ba_opcitiy">

                        <h2>로그인</h2>
                        <p>로그인을 통해 서비스를 마음껏 즐겨보세요.</p>
                        <button class="btn_login" onclick="cambiar_login()">로그인</button>
                    </div>
                </div>
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy">
                        <h2>회원가입</h2>
                        <p>아직 아이디가 없다면 회원가입을 진행한 후에 로그인을 해주세요.</p>

                        <button class="btn_sign_up" onclick="cambiar_sign_up()">회원가입</button>
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
                    <h2>로그인</h2>
                    <input type="text" placeholder="Username" name="id"/>
                    <input type="password" placeholder="Password" name="password"/>
                    <button class="btn_login" onclick="cambiar_login()">로그인</button>
                </form>

                <form class="cont_form_sign_up">
                    <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                    <h2>회원가입</h2>
                    <input type="text" placeholder="Email" />
                    <input type="text" placeholder="User" />
                    <input type="password" placeholder="Password" />
                    <input type="password" placeholder="Confirm Password" />
                    <button class="btn_sign_up" onclick="cambiar_sign_up()">회원가입</button>

                </form>

            </div>

        </div>
    </div>
</div>
<script src="js/login.js" type="text/javascript"></script>