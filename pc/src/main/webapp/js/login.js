$(function () {

    //点击切换密码可见与不可见模式
    $(".pds").click(function () {
        var typename= $(".passwd").attr("type");
       if(typename=="text"){
           $(".passwd").attr("type","password");
       }else{
           $(".passwd").attr("type","text");
       }
    });
    //点击登录时判断输入的账户名和密码是否为空
    $(".loginbutton").click(function () {
        var username=$(".username").val();
        var passwd=$(".passwd").val();
        if(username==""||passwd==""){
          $(".tishi").css("display","block");
          $(".tishi").text("账号或者密码不能为空");
        }else{
            $(".tishi").css("display","none");
            $(".loginform").submit();
        };
    })
})