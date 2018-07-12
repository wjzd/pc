<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="css/register.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="js/register.js"></script>
    <title>Title</title>
</head>
<body>

<input type="hidden" value="${hite}" class="hite"/>
<form action="/registerController/register" method="post" class="registerForm">
    <div class="rdiv">
        <div class="title">注册</div>
        <table class="rtable">

            <tr>
                <td>用户名：</td>
                <td>
                    <input type="text" class="username" name="username">
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <input type="password" class="passwd" name="passwd"/>
                </td>
            </tr>
            <tr>
                <td>邀请码：</td>
                <td>
                    <input type="text" class="yqnum" name="code"/>
                </td>
            </tr>
        </table>

        <div class="submitdiv">注册</div>
    </div>
</form>
</body>
</html>

</body>
</html>
