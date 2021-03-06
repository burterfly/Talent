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

<header>
 
 <h1><img src="${pageContext.request.contextPath}/twoleader/images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="#" class="admin_icon">韩梅梅</a></li>
  <li><a href="login.jsp" class="quit_icon">安全退出</a></li>
 </ul>
</header>

<aside class="lt_aside_nav content mCustomScrollbar">
 <ul>
  <li>
   <dl>
    <dt>功能管理</dt>
     <dd><a href="../twoleader/listAllTalent.do"  class="active">个人信息</a></dd>
    <dd><a href="Experience.jsp" >履职经历</a></dd>
    <dd><a href="Wages.jsp" >工资明细</a></dd>
    <dd><a href="Contract.jsp" >合同管理</a></dd>
    <dd><a href="Now.jsp"  >目前工作</a></dd>  
   </dl>
  </li> 
  </li>
 </ul>
</aside>


      <section class="rt_wrap content mCustomScrollbar">
                
      <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">个人信息</h2>     
      </div>
        
      <table class="table">
       <tr>
        <th style="width: 70px; ">姓名</th>
         <th style="width: 70px; ">年龄</th>
        <th style="width: 70px; ">性别</th>                  
        <th style="width: 70px; ">资格证书</th>        
        <th style="width: 70px; ">教育经历</th>                                 
        <th style="width: 70px; ">业务技能</th> 
        <th style="width: 70px; ">综合评分</th>        
       </tr>
            
       <c:forEach items="${AllTalent}" var="talent"> 
                        
       <tr>
        <td class="center">${talent.tname}</td>                        
        <td class="center">${talent.tage}</td>               
        <td class="center">${talent.tsex}</td>                
        <td class="center">${talent.tcer}</td>
        <td class="center">${talent.tedu}</td>
        <td class="center">${talent.tpro}</td>  
        <td class="center"></td>           
       </tr>      
                   
       </c:forEach>
                          
      </table>
    
 </div>
</section>
</body>
</html>