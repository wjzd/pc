<%--
  Created by IntelliJ IDEA.
  User: LUOSHUN
  Date: 2018/6/26
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/zhls.css" />
    <link rel="stylesheet" href="css/jquery-ui.css">
    <script type="text/javascript" src="js/jquery-3.0.0.js" ></script>
    <script src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/zhls.js" ></script>
</head>
<body>
<!--账户历史-->
<div class="zhlsdiv">
    <div class="hright zhls">
        账户历史&nbsp;&nbsp;
    </div>
    <!--搜索部分-->
    <div class="ssdiv">
        <table class="sst">
            <tr>


                <td>日期</td>
                <td>

                    <table class="timetable">
                        <tr>
                            <td>
                                <input type="text" class="star"/>
                            </td>
                            <td>
                                <div class="start">∧</div>
                            </td>
                        </tr>
                    </table>




                </td>
                <td>到</td>
                <td>

                    <table class="timetable">
                        <tr>
                            <td><input type="text" class="over" /></td>
                            <td>
                                <div class="overt">∧</div>
                            </td>
                        </tr>
                    </table>


                </td>

                <td>
                    <div class="sxun">搜寻</div>
                </td>
            </tr>
        </table>
    </div>
    <table class="zhlst">
        <tr class="zhlstitle">
            <td>日期</td>
            <td>投注额</td>
            <td>有效金额</td>
            <td>输&nbsp;/&nbsp;赢</td>
        </tr>
        <tr>
            <td>2018-6-18</td>
            <td>697</td>
            <td>697</td>
            <td>赢</td>
        </tr>
    </table>
</div>
</body>
</html>
