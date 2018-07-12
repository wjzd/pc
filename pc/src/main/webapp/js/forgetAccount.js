$(function () {
    var hite=$(".hite").val();
    if(hite!=null&&hite!=""){
        alert(hite);
        $(".hite").val("");
    }else{

    };
    $(".zhmm").click(function () {
        var email=$(".email").val();
        var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
        if(reg.test(email)){
            $(".forgetform").submit();
        }else{
            alert("邮箱格式不正确");
        }

    })
})