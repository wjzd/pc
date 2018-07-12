$(function () {
    var hite=$(".hite").val();

    if(hite==""){

    }else{
        alert(hite);
        $(".hite").val("")
    }

    $(".submitdiv").click(function(){

        if(judgename()){
            if(judgepd()){
                if(judgecode()){
                    $(".registerForm").submit();
                }
            }
        }else{

        }




    });


    //判断用户名的长度
    function judgename() {
        var username=$(".username").val();

        if(username.length>=3 && username.length<=20){

            return true;
        }else{

            alert("用户名的长度只能是3 - 20位");
            return false;
        }
    };
    //判断密码的长度
    function judgepd() {
        var passwd=$(".passwd").val();
        if(passwd.length>=4&&passwd.length<=20){
            return true;
        }else{
            alert("密码的长度只能是4 - 20位");
            return false;
        }
    };
    //判断邀请码是否合法
    function judgecode() {
        var code=$(".yqnum").val();
        if(code.length=6){
            return true;
        }else{
            alert("邀请码只能是六位数！");
            return false;
        }
    };
})