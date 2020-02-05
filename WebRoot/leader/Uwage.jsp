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
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/twoleader/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="js/jquery.js"></script>
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
</script>
</head>
<body>
<!--header-->
<header>
 
 <h1><img src="${pageContext.request.contextPath}/twoleader/images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="#" class="admin_icon">管理员10055</a></li>
  <li><a href="login.jsp" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <ul>
  <li>
   <dl>
    <dt>功能管理</dt>
    <dd><a href="User.jsp" class="active">员工管理</a></dd>
    <dd><a href="Company.jsp" >企业管理</a></dd>    
   </dl>
  </li>   
 </ul>
</aside>


      <section class="rt_wrap content mCustomScrollbar">     
       <form:form action="${ pageContext.request.contextPath}/twoadmin/selectHouse.do?SId=1"
        modelAttribute="House" method="post" name="myform" >      
      <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">员工工资管理</h2>     
      </div>                 
      </form:form>
   
      
      
      
      <table class="table">
       <tr>
        <th style="width: 70px; ">姓名</th>
        <th style="width: 70px; ">时间</th>
        <th style="width: 70px; ">公司</th>                  
        <th style="width: 70px; ">薪水</th>              
        <th style="width: 70px; ">操作</th>    
       </tr>
                    
       <tr>
        <td class="center">hello</td>                                 
        <td class="center">2015/9</td>               
        <td class="center">人民银行</td>                
        <td class="center">2000</td>
        <td class="center">增加/删除</td>
                
       </tr>   
         <tr>
        <td class="center">hello</td>                                 
        <td class="center">2015/9</td>               
        <td class="center">人民银行</td>                
        <td class="center">2000</td>
        <td class="center">增加/删除</td>           
       </tr>   
                        
      </table>
    
     
    
 </div>
</section>
</body>
</html>