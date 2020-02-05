<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<script src="js/jsp5.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/twoleader/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/twoleader/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
   <li><a href="#" class="admin_icon">韩梅梅</a></li>
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
    <!--当前链接则添加class:active 
    
    <dd><a href="../twoadmin/listAllHouse.do?SId=1" class="active">个人信息</a></dd>
    <dd><a href="../twoadmin/listnotauditedHouse.do?SId=1" >履职经历</a></dd>
    <dd><a href="../twoadmin/PublishedHouse.do?SId=1">工资明细</a></dd>
    <dd><a href="../twoadmin/topublishhouse.do">目前工作</a></dd>     
    -->
      <dd><a href="Information.jsp">个人信息</a></dd>
    <dd><a href="Experience.jsp" >履职经历</a></dd>
    <dd><a href="Wages.jsp">工资明细</a></dd>
    <dd><a href="Wages.jsp" >合同管理</a></dd>
    <dd><a href="Now.jsp"  class="active">目前工作</a></dd>     
    
   </dl>
  </li> 
  </li>
 </ul>
</aside>

      <section class="rt_wrap content mCustomScrollbar">
      
       <form:form action="${ pageContext.request.contextPath}/twoadmin/selectHouse.do?SId=1"
        modelAttribute="House" method="post" name="myform" >      
      <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">目前工作</h2>     
      </div>                  
      </form:form>
           
      <table class="table">
       <tr>
        <th style="width: 70px; ">时间</th>
        <th style="width: 70px; ">公司</th>
         <th style="width: 70px; ">职位</th>               
       </tr>
                    
       <tr>
        <td class="center">2015/9</td> 
        <td class="center">人民银行</td>                                 
        <td class="center">柜员</td>                             
       </tr>   
                        
      </table>
    
 </div>
</section>
<script src="${pageContext.request.contextPath}/twoleader/js/ueditor.config.js"></script>
<script src="${pageContext.request.contextPath}/twoleader/js/ueditor.all.min.js"> </script>

</body>

</html>
