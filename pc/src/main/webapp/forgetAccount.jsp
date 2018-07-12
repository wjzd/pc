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
    <link rel="stylesheet" href="css/forgetnum.css" />
    <script type="text/javascript" src="js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="js/forgetAccount.js"></script>
    <title>Title</title>
</head>
<body>
<input type="hidden" value="${hite}" class="hite">
<div class="tdiv">
    <div class="mmhf">
        <div class="mmhf1">找回账号</div>
    </div>
    <form action="/forgetController/forgetA" method="post" class="forgetform">
    <table class="ftable">
        <tr>
            <td colspan="2">
                <span class="zhuyi">注意：</span>您必须已绑定邮箱才能使用此功能。如果您尚未注册电子邮件，请联系您的上线
            </td>

        </tr>
        <tr>

            <td colspan="2">
                请输入以下信息，我们会将您的账号发送到您的邮箱。
            </td>
        </tr>
        <tr>
            <td colspan="2">
                邮箱
            </td>

        </tr>
        <tr>
            <td colspan="2">
                <input type="text" class="email input" name="email"/>
            </td>

        </tr>


        <tr>
            <td>
                <div class="quxiao bdiv">取消</div>
            </td>
            <td>
                <div class="zhmm bdiv">找回账号</div>
            </td>
        </tr>


    </table>
    </form>
</div>
</body>
</html>
