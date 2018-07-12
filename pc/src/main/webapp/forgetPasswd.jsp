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
    <link rel="stylesheet" href="css/forget.css"/>
    <script type="text/javascript" src="js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="js/forgetPasswd.js"></script>
    <title>Title</title>
</head>
<body>
    <div class="tdiv">
        <div class="mmhf">
            <div class="mmhf1">密码恢复</div>
        </div>
        <table class="ftable">
            <tr>
                <td colspan="2">
                    <span class="zhuyi">注意：</span>您必须已注册密码恢复才能使用此功能。如果您尚未注册电子邮件，请联系您的上线
                </td>

            </tr>
            <tr>

                <td colspan="2">
                    请输入以下信息，我们会帮您重置密码。
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    邮箱
                </td>

            </tr>
            <tr>
                <td colspan="2">
                    <input type="text" class="email input"/>
                    <div class="hqy">获取验证码</div>
                </td>

            </tr>
            <tr>
                <td colspan="2">
                    验证码
                </td>

            </tr>
            <tr>
                <td colspan="2">
                    <input type="text" class="yzm input"/>

                </td>

            </tr>
            <tr>
                <td colspan="2">新密码</td>
                </td>
            </tr>
                <td colspan="2">
                    <input type="text" class="newpwd input" />
                </td>
                </td>
            <tr>
                <td>
                    <div class="quxiao bdiv">取消</div>
                </td>
                <td>
                    <div class="zhmm bdiv">找回密码</div>
                </td>
            </tr>


        </table>
    </div>
</body>
</html>
