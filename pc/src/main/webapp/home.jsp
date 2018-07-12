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
    <link rel="stylesheet" href="css/home.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="js/home.js"></script>
    <title>Title</title>
</head>
<body>
    <input type="hidden" value="${userInfo.userid}" class="userid"/>
    <input type="hidden" value="${userInfo.userprevid}" class="previd"/>
<div class="headdiv">
    <table class="headt">
        <tr>
            <td rowspan="2">
                <img src="img/u=982435258,2286603004&fm=27&gp=0.jpg" class="headimg"/>
            </td>
            <td class="username">${loginUser.username}</td>
        </tr>
        <tr>

            <td class="moneyt">

                人民币&nbsp;<span>${userInfo.money}</span>&nbsp;
                <div class="namew">
                    <img src="img/tubiao/20100125094714-2126752155.png" class="sxiimg"/>
                </div>
            </td>
        </tr>
    </table>
    <!--顶部右边的表格-->
    <table class="rightt">
        <tr>
            <td>
                <a href="/daoHang/dhmethod?type=1" onClick="javascript:window.open('daohang.jsp','','width=900,height=600,toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes');return false;">充值</a>
            </td>
            <td>
                <a href="daohang.jsp" onClick="javascript:window.open('daohang.jsp?type=2','','width=900,height=600,toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes');return false;">交易状况</a>
            </td>
            <td>
                <a href="daohang.jsp" onClick="javascript:window.open('daohang.jsp?type=3','','width=900,height=600,toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes');return false;">账户历史</a>
            </td>
            <td>
                <a href="daohang.jsp" onClick="javascript:window.open('daohang.jsp?type=4','','width=900,height=600,toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes');return false;">赛果</a>
            </td>
            <td>
                <img src="img/tubiao/guoqi.png" />
            </td>
            <td>
                <img src="img/tubiao/wenhao.png"/>
            </td>
            <td>
                <img src="img/tubiao/dianhua.png" />
            </td>
            <td>
                <img src="img/tubiao/dainnao.png" />
            </td>
            <td>
                <img src="img/tubiao/xiaoxi.png" />
            </td>
        </tr>
    </table>
</div>
<!--头部下面采用div浮动布局-->

<div class="tddiv1">
    <table class="mulut">
        <tr>
            <td class="mulutd">目录</td>
            <td class="jydtd">交易单</td>
            <td class="zdtd">我的注单</td>
        </tr>
    </table>
    <!--目录div-->
    <div class="muludiv">
        <div class="locationdiv">地区</div>
        <!--放地区名表格外部的div-->

        <table class="locationt">
            <tr class="bjtr3">
                <td class="bjtd">北京</td>
                <td></td>
            </tr>
            <tr>
                <td class="jndtd">加拿大</td>
                <td></td>
            </tr>
            <tr>
                <td class="hgtd">韩国</td>
                <td></td>
            </tr>
        </table>
    </div>
    <!--交易单div-->
    <div class="jyddiv">
        <div class="dytz">单一投注</div>
        <div class="tztishi">请把选项加入在您的注单里。</div>

        <!--下注表格-->
        <table class="xzt">
            <tr>
                <td colspan="3">
                    <div class="nowl">北京</div>
                </td>

            </tr>
            <tr>
                <td colspan="3">
                    <div class="xzdiv">
                        <input  type="text" placeholder="投注额" class="xzinput"/>
                        <div class="qxdiv">×</div>
                    </div>
                </td>

            </tr>
            <tr>
                <td colspan="2" class="kymoney">可赢金额：</td>

                <td>
                    <span class="money">123595.5</span>
                </td>
            </tr>
            <tr class="xztr">
                <td class="xztd1" colspan="2">
                    <div class="ksxz">10</div>
                </td>
                <td class="xztd1">
                    <div class="ksxz">20</div>
                </td>
            </tr>
            <tr class="xztr">
                <td class="xztd1" colspan="2">
                    <div class="ksxz">50</div>
                </td>


                <td class="xztd1">
                    <div class="ksxz">100</div>
                </td>
            </tr>
            <tr class="xztr">
                <td class="xztd2" colspan="2">
                    <div class="ksxz bodiv">250</div>
                </td>
                <td class="xztd2">
                    <div class="ksxz bodiv">500</div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div class="okxz">确定交易</div>
                </td>

            </tr>
            <tr>
                <td colspan="3">
                    <div class="qxxz">取消</div>
                </td>

            </tr>
            <tr>
                <td colspan="2" class="dantitle">单注最低：</td>

                <td class="danmoney">50&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="dantitle">单注最高:</td>

                <td class="danmoney">20000&nbsp;&nbsp;&nbsp;</td>
            </tr>

        </table>
    </div>
    <!--我的注单div-->
    <div class="wdzddiv">
        <!--未结算注单表格-->

        <table class="ttablew ttable">
            <tr>
                <td rowspan="2" class="jttd">∧</td>
                <td class="otdt">未结算注单</td>
            </tr>
            <tr>

                <td class="xotdt">最新20笔交易</td>
            </tr>
        </table>
        <div class="zdtishi">您还没有未结算的注单</div>

        <div class="wjsdiv">
            <c:forEach items="${wlist}" var="xz">
                <table class="wjs">
                    <tr>
                        <td class="zptd">
                            <%--下注时间--%>
                            <input type="hidden" value="${xz.newtime}" class="xztime"/>
                                <%--下注期号--%>
                            <input type="hidden" value="${xz.issue}" class="xzsue">

                        </td>
                        <td class="hmpl">号码&nbsp;赔率</td>
                        <td><div class="jia">+</div></td>
                        <td class="zptd"></td>
                    </tr>
                    <tr>
                        <td class="zptd"></td>
                        <td class="qq"><span class="lefthm">${xz.xznumber}</span>&nbsp;&nbsp;<span class="plcolor">${xz.odds}</span></td>
                        <td class="qq"></td>
                        <td class="zptd"></td>
                    </tr>
                    <tr>
                        <td class="zptd"></td>
                        <td>投注额：</td>
                        <td class="tze">${xz.money}</td>
                        <td class="zptd"></td>
                    </tr>
                    <tr class="lasttr">
                        <td class="zptd"></td>
                        <td>可赢金额：</td>
                        <td class="tze">${xz.keying}</td>
                        <td class="zptd"></td>
                    </tr>
                </table>
            </c:forEach>


            <%--<table class="wjs">
                <tr>
                    <td class="zptd"></td>
                    <td class="hmpl">号码&nbsp;赔率</td>
                    <td><div class="jia">+</div></td>
                    <td class="zptd"></td>
                </tr>
                <tr>
                    <td class="zptd"></td>
                    <td class="qq"><span class="lefthm">15</span>&nbsp;&nbsp;<span class="plcolor">9.88</span></td>
                    <td class="qq"></td>
                    <td class="zptd"></td>
                </tr>
                <tr>
                    <td class="zptd"></td>
                    <td>投注额：</td>
                    <td class="tze">100</td>
                    <td class="zptd"></td>
                </tr>
                <tr class="lasttr">
                    <td class="zptd"></td>
                    <td>可赢金额：</td>
                    <td class="tze">200.00</td>
                    <td class="zptd"></td>
                </tr>
            </table>--%>
        </div>

        <!--已结算注单表格-->
        <table class="ttableyi ttable">
            <tr>
                <td rowspan="2" class="jttd">∧</td>
                <td class="otdt">已结算注单</td>
            </tr>
            <tr>

                <td class="xotdt">今日</td>
            </tr>
        </table>

        <div class="yjsdiv">
            <c:forEach items="${ylist}" var="yxz">
                <table class="wjs">
                    <tr>
                        <td class="zptd">
                                <%--下注时间--%>
                            <input type="hidden" value="${yxz.newtime}" class="xztime"/>
                                <%--下注期号--%>
                            <input type="hidden" value="${yxz.issue}" class="xzsue">
                        </td>
                        <td class="hmpl">号码&nbsp;赔率</td>
                        <td><div class="jia">+</div></td>
                        <td class="zptd"></td>
                    </tr>
                    <tr>
                        <td class="zptd"></td>
                        <td class="qq"><span class="lefthm">${yxz.xznumber}</span>&nbsp;&nbsp;<span class="plcolor">${yxz.odds}</span></td>
                        <td class="qq"></td>
                        <td class="zptd"></td>
                    </tr>
                    <tr>
                        <td class="zptd"></td>
                        <td>投注额：</td>
                        <td class="tze">${yxz.money}</td>
                        <td class="zptd"></td>
                    </tr>
                    <tr class="lasttr">
                        <td class="zptd"></td>
                        <td>可赢金额：</td>
                        <td class="tze keying">${yxz.keying}</td>
                        <td class="zptd"></td>
                    </tr>
                </table>
            </c:forEach>

            <%--<table class="wjs">
                <tr>
                    <td class="zptd"></td>
                    <td class="hmpl">号码&nbsp;赔率</td>
                    <td><div class="jia">+</div></td>
                    <td class="zptd"></td>
                </tr>
                <tr>
                    <td class="zptd"></td>
                    <td class="qq"><span class="lefthm">15</span>&nbsp;&nbsp;<span class="plcolor">9.88</span></td>
                    <td class="qq"></td>
                    <td class="zptd"></td>
                </tr>
                <tr>
                    <td class="zptd"></td>
                    <td>投注额：</td>
                    <td class="tze">100</td>
                    <td class="zptd"></td>
                </tr>
                <tr class="lasttr">
                    <td class="zptd"></td>
                    <td>可赢金额：</td>
                    <td class="tze">200.00</td>
                    <td class="zptd"></td>
                </tr>
            </table>--%>
            <%--<table class="wjs">
                <tr>
                    <td class="zptd"></td>
                    <td class="hmpl">号码&nbsp;赔率</td>
                    <td><div class="jia">+</div></td>
                    <td class="zptd"></td>
                </tr>
                <tr>
                    <td class="zptd"></td>
                    <td class="qq"><span class="lefthm">15</span>&nbsp;&nbsp;<span class="plcolor">9.88</span></td>
                    <td class="qq"></td>
                    <td class="zptd"></td>
                </tr>
                <tr>
                    <td class="zptd"></td>
                    <td>投注额：</td>
                    <td class="tze">100</td>
                    <td class="zptd"></td>
                </tr>
                <tr class="lasttr">
                    <td class="zptd"></td>
                    <td>可赢金额：</td>
                    <td class="tze">200.00</td>
                    <td class="zptd"></td>
                </tr>
            </table>--%>
        </div>

    </div>


</div>
<div class="tkbj">
</div>
<!--弹框-->
<div class="tk">
    <table class="tkt">
        <tr>
            <td>
                <span class="tkhm">79</span> @
                <span class="tkpl">6.65</span>
            </td>

        </tr>
       <%-- <tr>
            <td colspan="2" class="tktr1">
                开奖时间：<span class="tktime">2018-6-16</span>
            </td>

        </tr>--%>
        <tr>
            <td>投注额：</td>
            <td class="tktz">120</td>
        </tr>
        <tr>
            <td>输 / 赢：</td>
            <td class="tksy">132.36</td>
        </tr>
        <tr>
            <td>下注时间：</td>
            <td class="tknow">2018/6/16:14.25</td>
        </tr>
        <tr>
            <td class="tktr1">下注期号：</td>
            <td class="tknum" class="tktr1">OU7819635</td>
        </tr>
        <tr>
            <td colspan="2">
                <div class="gb">关闭</div>
            </td>

        </tr>
    </table>
</div>

<!--中间下注区域-->

<div class="tddiv2">
    <table class="xzhead">
        <tr>
            <td><div>★0</div></td>
            <td><div>选择联赛(全部)</div></td>
            <td><div>主要盘口</div></td>
            <td><div>隐藏特殊</div></td>
            <td></td>
            <td><div>排序</div></td>
            <td><div class="nowlocation">北京</div></td>
            <td><div>114</div></td>


        </tr>
    </table>
    <!--下注号码的表格-->
    <table class="numtable">
        <tr  class="onetr">
            <td>足球</td>
            <td>全场</td>
            <td>全场</td>
            <td>全场</td>
            <td>全场</td>
            <td>半场</td>
            <td>半场</td>
            <td>半场</td>

        </tr>
        <tr  class="twotr">
            <td>今日</td>
            <td>独赢</td>
            <td>让球</td>
            <td>大小</td>
            <td>单双</td>
            <td>独赢</td>
            <td>让球</td>
            <td>大小</td>

        </tr>
    </table>
    <!--下注号码表格-->

    <div class="hunhe xzys">&nbsp;<span class="jiantou">∨</span> 混合</div>
    <div class="xztdiv1">
        <table class="xztable">
            <tr class="hhtr1">
                <td>大</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[0].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="da"/>
                </td>-->
                <td>小</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[1].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="xiao"/>
                </td>-->
                <td>单</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[2].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="dan"/>
                </td>-->
                <td>双</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[3].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="shuang"/>
                </td>-->
            </tr>
            <tr class="hhtr1">
                <td>大单</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[4].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="dadan"/>
                </td>-->
                <td>大双</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[5].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="dashuang"/>
                </td>-->
                <td>小单</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[6].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="xiaodan"/>
                </td>-->
                <td>小双</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[7].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="xiaoshuang"/>
                </td>-->
            </tr>
            <tr class="hhtr1">
                <td colspan="1">极大</td>

                <td class="peilv">
                    <span class="peilvspan">${nlist[8].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="jida">
                </td>-->
                <td colspan="1">极小</td>

                <td class="peilv">
                    <span class="peilvspan">${nlist[9].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="jixiao">
                </td>-->
                <td colspan="1">豹子</td>

                <td class="peilv">
                    <span class="peilvspan">${nlist[10].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="baozi">
                </td>-->
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>

                <td colspan="2" class="allplay">
                    <span class="allspan">所有玩法</span>
                </td>

                <td></td>
                <td style="background: #FEF7EB;"></td>
                <td></td>
            </tr>
        </table>
    </div>
    <div class="bose xzys xzys1">&nbsp;<span class="jiantou">∧</span> 波色</div>
    <div class="xztdiv2">
        <table class="xztable">
            <tr class="bstr1">
                <td colspan="1">红波</td>

                <td class="peilv">
                    <span class="peilvspan">${nlist[11].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="hongbo">
                </td>-->
                <td colspan="1">绿波</td>

                <td class="peilv">
                    <span class="peilvspan">${nlist[12].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="lvbo">
                </td>-->
                <td colspan="1">蓝波</td>

                <td class="peilv">
                    <span class="peilvspan">${nlist[13].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="lanbo">
                </td>-->
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>



    <div class="tema xzys xzys1">&nbsp;<span class="jiantou">∧</span> 特码</div>
    <div class="xztdiv3">
        <table class="xztable">
            <tr class="tmtr1">
                <td>0</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[14].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="lin">
                </td>-->
                <td>7</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[21].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="qi">
                </td>-->
                <td>14</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[28].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yisi">
                </td>-->
                <td>21</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[35].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="eryi">
                </td>-->
            </tr>
            <tr class="tmtr1">
                <td>1</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[15].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yi">
                </td>-->
                <td>8</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[22].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="ba">
                </td>-->
                <td>15</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[27].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yiwu">-->
                </td>
                <td>22</td>
                <td class="peilv" >
                    <span class="peilvspan">${nlist[34].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="erer">
                </td>-->
            </tr>
            <tr class="tmtr1">
                <td>2</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[16].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="er">-->
                </td>
                <td>9</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[23].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="jiu">
                </td>-->
                <td>16</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[30].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yiliu">
                </td>-->
                <td>23</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[37].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="ersan">
                </td>-->
            </tr>
            <tr class="tmtr1">
                <td>3</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[17].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="san">
                </td>-->
                <td>10</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[24].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="shi">
                </td>-->
                <td>17</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[31].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yiqi">
                </td>-->
                <td>24</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[38].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="ersi">
                </td>-->
            </tr>
            <tr class="tmtr1">
                <td>4</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[18].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="si">
                </td>-->
                <td>11</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[25].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yiyi">
                </td>-->
                <td>18</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[32].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yiba">
                </td>-->
                <td>25</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[39].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="erwu">
                </td>-->
            </tr>
            <tr class="tmtr1">
                <td>5</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[19].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="wu">
                </td>-->
                <td>12</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[26].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yier">
                </td>-->
                <td>19</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[33].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yijiu">
                </td>-->
                <td>26</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[40].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="erliu">
                </td>-->
            </tr>
            <tr class="tmtr1">
                <td>6</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[20].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="liu">
                </td>-->
                <td>13</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[27].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="yisan">
                </td>-->
                <td>20</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[34].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="erlin">
                </td>-->
                <td>27</td>
                <td class="peilv">
                    <span class="peilvspan">${nlist[41].peilv}</span>
                </td>
                <!--<td>
                    <input type="text" class="erqi">
                </td>-->
            </tr>
        </table>
    </div>



    <div class="bjl xzys xzys1">&nbsp;<span class="jiantou">∧</span> 百家乐</div>
    <div class="xztdiv4">
        <table class="xztable">
            <tr class="bjltr1">
                <td colspan="1">庄</td>
                <td >
                    <span class="peilvspan">${nlist[42].peilv}</span>
                </td>
                <td colspan="1">闲</td>
                <td>
                    <span class="peilvspan">${nlist[43].peilv}</span>
                </td>
                <td>和 </td>
                <td>
                    <span class="peilvspan">${nlist[44].peilv}</span>

                </td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>


</div>

<div class="tddiv3">
    <div class="bqdiv kjll">本期开奖</div>
    <table class="bqnum">
        <tr>
            <td>
                <div class="bqdivd">
                    <span class="bqnums">${klist[0].onenum}</span>
                </div>

            </td>
            <td>
                <div class="bqdivd">
                    <span class="bqnums">${klist[0].twonum}</span>
                </div>
            </td>
            <td>
                <div class="bqdivd">
                    <span class="bqnums">${klist[0].threenum}</span>
                </div>
            </td>
        </tr>
    </table>
    <div class="kjll">近期开奖</div>

    <!--每一期的开奖号码-->
    <table class="kjnum">
       <c:forEach items="${klist}" var="kj">

                   <tr>
                       <td>第${kj.kjqh}期</td>
                       <td>
                           <div class="numlogo1 logodiv">
                               ${kj.onenum}
                           </div>

                       </td>
                       <td>
                           <div class="numlogo2 logodiv">
                                   ${kj.twonum}
                           </div>
                       </td>
                       <td>
                           <div class="numlogo3 logodiv">
                                   ${kj.threenum}
                           </div>
                       </td>
                   </tr>

       </c:forEach>
       <%-- <tr>
            <td>第20180119期</td>
            <td>
                <div class="numlogo1 logodiv">
                    12
                </div>
            </td>
            <td>
                <div class="numlogo2 logodiv">
                    12
                </div>
            </td>
            <td>
                <div class="numlogo3 logodiv">
                    2
                </div>
            </td>
        </tr>
        <tr>
            <td>第20190310期</td>
            <td>
                <div class="numlogo1 logodiv">
                    5
                </div>
            </td>
            <td>
                <div class="numlogo2 logodiv">
                    4
                </div>
            </td>
            <td>
                <div class="numlogo3 logodiv">
                    9
                </div>
            </td>
        </tr>--%>
    </table>
</div>
<input type="button" value="开奖" class="ceshi"/>
</body>
</html>
