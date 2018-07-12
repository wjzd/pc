<%--
  Created by IntelliJ IDEA.
  User: LUOSHUN
  Date: 2018/6/26
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/daohang.css" />
</head>
<body>

<div class="left">


    <table class="tleftt">
        <tr>
            <td class="title">我的账户</td>
        </tr>

        <tr>
            <td>
                <a href="zhls.jsp" target="diframe">账户历史</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="jyzk.jsp" target="diframe">交易状况</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="cz.jsp" target="diframe">充值</a>
            </td>
        </tr>
        <tr>
            <td>详细设定</td>
        </tr>
        <tr>
            <td>
                <a href="ggmm.jsp" target="diframe">更改密码</a>
            </td>
        </tr>
        <tr>
            <td>公告栏</td>
        </tr>

        <tr>
            <td class="title bz">帮助</td>
        </tr>
        <tr>
            <td>体育规则</td>
        </tr>
        <tr>
            <td>规则与条款</td>
        </tr>
        <tr>
            <td>
                <a href="saiguo.jsp" target="diframe">赛果</a>
            </td>
        </tr>
        <tr>
            <td>指南</td>
        </tr>
        <tr>
            <td>新功能</td>
        </tr>
        <tr>
            <td>赔率计算列表</td>
        </tr>
        <tr>
            <td>联系我们</td>
        </tr>
        <tr>
            <td>故障疑难排解</td>
        </tr>
    </table>
</div>


<!--右边div-->
<div class="rightdiv">

    <iframe frameborder="0" src="zhls.jsp" class="diframe" name="diframe"></iframe>

</div>

</body>
</html>
