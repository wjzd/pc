$(function(){
	//用一个变量保存下注的地区
	//点击地区时
	
	$(".bjtd").click(function(){
		
		$(this).css("color","red");
		$(".jndtd").css("color","black");
		$(".hgtd").css("color","black");
		$(".nowl").text("北京");
		$(".nowlocation").text("北京");
	});
	$(".jndtd").click(function(){
		
		$(".bjtd").css("color","black");
		$(this).css("color","red");
		$(".hgtd").css("color","black");
		$(".nowl").text("加拿大");
		$(".nowlocation").text("加拿大");
	});
	$(".hgtd").click(function(){

		$(".bjtd").css("color","black");
		$(".jndtd").css("color","black");
		$(this).css("color","red");
		$(".nowl").text("韩国");
		$(".nowlocation").text("韩国");
	});
	
	
	//点击目录菜单
	$(".mulutd").click(function(){
//		var zt=$(".muludiv").css("display");
//		if(zt=="block"){
//			$(".muludiv").css({"display":"none"});
//		}else{
//			$(".muludiv").css({"display":"block"});
//		}
		
		$(".mulutd").css("color","#EBC580");
		$(".jydtd").css("color","#A58D6F");
		$(".zdtd").css("color","#A58D6F");
		
		$(".muludiv").css({"display":"block"});
		$(".jyddiv").css({"display":"none"});
		$(".wdzddiv").css({"display":"none"});
	});
	//点击交易单
	$(".jydtd").click(function(){
		$(".jydtd").css("color","#EBC580");
		$(".mulutd").css("color","#A58D6F");
		$(".zdtd").css("color","#A58D6F");
		
		$(".tztishi").css("display","block");
		$(".xzt").css("display","none");
		$(".jyddiv").css({"display":"block"});
		$(".muludiv").css({"display":"none"});
		$(".wdzddiv").css({"display":"none"});
	});
	//点击我的注单
	$(".zdtd").click(function(){
		$(".zdtd").css("color","#EBC580");
		$(".mulutd").css("color","#A58D6F");
		$(".jydtd").css("color","#A58D6F");
		
		$(".wdzddiv").css({"display":"block"});
		$(".muludiv").css({"display":"none"});
		$(".jyddiv").css({"display":"none"});
	});
	
	//点击中间的赔率时显示左边的下注框
	$(".peilvspan").click(function(){
		//点击赔率时更改当前赔率的颜色

		$(".jydtd").css("color","#EBC580");
		$(".mulutd").css("color","#A58D6F");
		$(".zdtd").css("color","#A58D6F");

		$(".tztishi").css("display","none");
		$(".jyddiv").css({"display":"block"});
		$(".muludiv").css({"display":"none"});
		$(".wdzddiv").css({"display":"none"});
		$(".xzt").css("display","block");
		
		$(".xzinput").val(0);
		$(".money").text(0);
		//得到当前点击赔率的号码
		var num=$(this).parent().prev().text();
		//得到当前的赔率
		var peilv=$(this).text();
		//得到下注的地区
		var nowl=$(".nowl").text();

		//下注框鼠标失去焦点时
		$(".xzinput").blur(function () {
            var actionm=$(".xzinput").val();
            var ex = /^\d+$/;
            if (ex.test(actionm)) {

            }else{
            	actionm=0;
            	alert("下注只能是整数");
			}

            //可赢金额
            var ysum=parseFloat(peilv)*parseFloat(actionm);
            $(".money").text(ysum.toFixed(2));
        });
			
		//点击快速下注的金额时
		$(".ksxz").unbind("click").click(function(){
			
			var thism=$(this).text();
			
			var actionm=$(".xzinput").val();
			//下注总金额
			$(".xzinput").val(Number(thism)+Number(actionm));
			var sum=$(".xzinput").val();
			//可赢金额
			var ysum=parseFloat(peilv)*parseFloat(sum);
			//赋值并保留两位小数
			$(".money").text(ysum.toFixed(2));
		});
        //点击确定交易
        $(".okxz").click(function () {
        	var xzqh=20180704;
            //下注用户id
            var userid=$(".userid").val();
            //下注用户上级id
            var previd=$(".previd").val();
            //得到下注的金额
            var actionm=$(".xzinput").val();

            if(actionm>=5){

                $.post("/xiazhuController/xiazhu",{"xznumber":num,"odds":peilv,"location":nowl,
                "userid":userid,"issue":xzqh,"userprevid":previd,"money":actionm},function (result) {


					var json=eval("("+result+")");
					var sum=json.sum;
					if(sum==1){
                        window.location.reload();
                    }else{
					    alert("下注失败");
                    }


                });
            }else{
                alert("最低下注5元");
            }

        });

	});
	
	//点击混合
	$(".hunhe").click(function(){
		//判断混合的状态∧∨
		var zt=$(".xztdiv1").css("display");
		var jt=$(this).find(".jiantou");
		if(zt=="block"){
			jt.text("∧");
			$(".xztdiv1").css("display","none");
		}else{
			jt.text("∨");
			$(".xztdiv1").css("display","block");
		}
	})
	//点击波色
	$(".bose").click(function(){
		//判断混合的状态
		var zt=$(".xztdiv2").css("display");
		var jt=$(this).find(".jiantou");
		if(zt=="block"){
			jt.text("∧");
			$(".xztdiv2").css("display","none");
		}else{
			jt.text("∨");
			$(".xztdiv2").css("display","block");
		}
	})
	//点击特码
	$(".tema").click(function(){
		//判断混合的状态
		var zt=$(".xztdiv3").css("display");
		var jt=$(this).find(".jiantou");
		if(zt=="block"){
			jt.text("∧");
			$(".xztdiv3").css("display","none");
		}else{
			jt.text("∨");
			$(".xztdiv3").css("display","block");
		}
	})
	//点击百家乐
	$(".bjl").click(function(){
		//判断混合的状态
		var zt=$(".xztdiv4").css("display");
		var jt=$(this).find(".jiantou");
		if(zt=="block"){
			jt.text("∧");
			$(".xztdiv4").css("display","none");
		}else{
			jt.text("∨");
			$(".xztdiv4").css("display","block");
		}
	});
	
	//点击所有玩法
	$(".allspan").click(function(){
		
		var xzys=$(".xzys1").css("display");
		if(xzys=="none"){
			
			$(".xzys1").css("display","block");
		}else{
			$(".xztdiv4").css("display","none");
			$(".xztdiv3").css("display","none");
			$(".xztdiv2").css("display","none");
			$(".xzys1").css("display","none");
		}
		
	});
	
	//点击未结算注单
	$(".ttablew").click(function(){
		var tt=$(".wjsdiv").css("display");
		if(tt=="block"){
			$(this).find(".jttd").text("∧");
			$(".wjsdiv").css("display","none");
		}else{
			$(this).find(".jttd").text("∨");
			$(".wjsdiv").css("display","block");
		}
	});
	//点击已结算注单
	$(".ttableyi").click(function(){
		var tt=$(".yjsdiv").css("display");
		if(tt=="block"){
			$(this).find(".jttd").text("∧");
			$(".yjsdiv").css("display","none");
		}else{
			$(this).find(".jttd").text("∨");
			$(".yjsdiv").css("display","block");
		}
	});
	//点击下注菜单里面的+时
	$(".jia").click(function(){
		//得到号码
		var num=$(this).parent().parent().next().find(".lefthm").text();
		
		//得到赔率
		var pl=$(this).parent().parent().next().find(".plcolor").text();
		//得到下注额
		var xz=$(this).parent().parent().next().next().find(".tze").text();
		//输赢
		var suy=pl*xz;

		//下注时间
		var xztime=$(this).parent().parent().find(".xztime").val();
		//下注期号
		var xzsue=$(this).parent().parent().find(".xzsue").val();
		//给弹框赋值
		$(".tkhm").text(num);
		$(".tkpl").text(pl);
		$(".tktz").text(xz);
		$(".tknow").text(xztime);
		$(".tknum").text(xzsue);
		$(".tksy").text(suy);


		$(".tkbj").css("display","block");
		$(".tk").css("display","block");
		
		//点击关闭
		$(".gb").unbind("click").click(function(){
			$(".tkbj").css("display","none");
		$(".tk").css("display","none");
		})
	});

	//调用开奖接口
    $(".ceshi").click(function () {
        //开奖的期号
        var kjqh=20180701;
        //开奖的号码
        var num1=3;
        var num2=4;
        var num3=9;
        //开奖的地区
        var location="北京";
        $.post("/kjController/kjm",{"kjqh":kjqh,"num1":num1,"num2":num2,
        "num3":num3,"location":location},function () {
            window.location.reload();
        });
    })


})
