$(document).ready(function(){
    initClick();
});


var initClick = function(){


        $("#login").click(function(){
        var username = $("#username").val();
        var password = $("#password").val();
        var role = $("input[name='role']:checked").val();

            if(username=='')
            {
                $.messager.alert({
                    title:"提示",
                    icon:"error",
                    msg:"请填写用户名！"
                });
                return
            }
            else if(username.length<2)
            {
                $.messager.alert({
                    title:"提示",
                    icon:"error",
                    msg:"用户名长度不能小于2！"
                });
                return
            }

            if(password=='')
            {
                $.messager.alert({
                    title:"提示",
                    icon:"error",
                    msg:"请填写密码！"
                });
                return
            }

        $.ajax({
            async:false,    //登陆时关闭异步，否则登陆成功提示不成功
            url:"/uestc/user/userLogin.do",
            type:"POST",
            data:{
                username:username,
                password:password,
                role:role
            },
            success:function(result){
                if(result.code){
                    //登陆成功
                    window.location.href=result.url;
                }else{
                    $.messager.alert("提示消息",result.msg);
                }
            }
        });
    });
};
