$(function () {
    $(function () {
        var code;
        //点击获取验证码
        $(".hqyzm").click(function () {
            code=parseInt((Math.random()*9+1)*1000);

            var email=$(".email").val();
            if(judgeemail()){
                $.post("forgetController/getcode",{code:code,email:email},function (result) {

                    var json=eval("("+result+")");
                    alert(json.num);
                    if(json.num=="1"){

                    }else{
                        alert("验证码发送失败");
                    }
                });
            }else{
                alert("请输入正确的邮箱格式!");
            }
        });

        //点击提交按钮时
        $(".tj").click(function () {
            var yzm=$(".yzm").value();
            //判断验证码是否相等
            if(yzm!=""&&yzm==code){
                var passwd=$(".newpwd").val();
                if(judgepd()){
                    var emails=$(".email").val();
                    //修改密码提交到后台，并判断是否修改成功
                    $.post("forgetController/alertpd",{passwd:passwd,email:emails},function (result) {
                        var json=eval("("+result+")");
                        if(json.num==1){
                            window.location.href="login.jsp";
                        }else{
                            alert("修改密码失败");
                        }
                    });
                }else{
                    alert("密码的长度只能是4-15位");
                }

            }else{
                alert("请输入正确的验证码");
            }
        });
        //判断邮箱的格式是否正确
        function judgeemail() {
            var email=$(".email").val();
            if(email!=null&&email!=""){
                return true;
            }else{
                return false;
            }
        }
        //判断密码的格式是否正确
        function  judgepd() {
            var pwd=$(".newpwd").val();
            if(pwd.length>=4&&pwd.length<=15){
                return true;
            }else{
                return false;
            }
        }

    })
})