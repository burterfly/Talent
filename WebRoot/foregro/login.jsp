<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>后台登录</title>
<meta name="author" content="DeathGhost" />


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/twoleader/css/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>


<script src="${pageContext.request.contextPath}/twoleader/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/twoleader/js/verificationNumbers.js"></script>
<script src="${pageContext.request.contextPath}/twoleader/js/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  $(".submit_btn").click(function(){
	  location.href="index.html";
	  });
});
</script>

<script   language="javaScript">   
          function     validate()   
          {   
                  if     (document.myform.SUserName.value==""||document.myform.SPwd.value=="")   
                  {   
                          alert("信息不能为空，请将信息填写完整");     
                          return   false   ;   
                  }   
          }   
  </script> 
</head>
<body>
<dl class="admin_login">
 <dt>
  <strong>上海泉成人才派遣公司欢迎你</strong>
 </dt>




 <dd class="user_icon">
  <input type="text" placeholder="账号" class="login_txtbx" name="SUserName"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" placeholder="密码" class="login_txtbx" name="SPwd"/>
 </dd>
  <dd>
 <div class="btn">
							<span id="login"><a>登录</a></span>
							<span class="forget"><a href="password.html">忘记密码</a></span>
						</div>
 <a  href="Information.jsp">登入</a>
 
 <a  href="Information.jsp">注册</a>

 </dd>

</dl>
</body>
</html>
