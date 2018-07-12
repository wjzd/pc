<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%--<%@ page isELIgnored="false" %>--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/login.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
</head>
<body>
    <form action="/loginController/login" method="post" name="loginform" class="loginform">

        <div class="head"></div>
        <div class="logindiv">
            <table class="logintable">
                <tr>
                    <td>
                        <div class="olddiv on">旧网站</div>
                    </td>
                    <td>
                        <div class="newdiv on">新网站</div>
                    </td>
                </tr>
                <tr>

                    <td colspan="2">
                        <div class="tp">
                            <div class="ndiv">
                                <img src="img/tubiao/geren.png" class="tubiao"/>
                                <div class="inputdiv">
                                    <input name="username" type="text" class="username text" placeholder="请输入账号"/>
                                </div>
                            </div>

                        </div>
                        <div class="tp">
                            <div class="ndiv">
                                <img src="img/tubiao/mima.png" class="tubiao"/>
                                <div class="inputdiv">
                                    <input name="passwd" type="text" class="passwd text" placeholder="请输入密码"/>
                                    <div class="eyediv">
                                        <img src="img/tubiao/yanjing.png" class="pds"/>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                        <div class="tishi">!请输入登录账号。</div>
                    </td>

                </tr>
                <tr>
                    <td>
                        <a href="forgetPasswd.jsp" class="wjmm">忘记密码?</a>
                    </td>
                    <td class="wjzhtd">
                        <a href="forgetAccount.jsp"  class="wjzh">忘记账号</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="loginbutton">登入</div>
                    </td>
                </tr>

            </table>

            <p class="zhuce">
                <a href="register.jsp" class="zhucea">我要注册</a>
            </p>
        </div>
    </form>
</body>
</html>
