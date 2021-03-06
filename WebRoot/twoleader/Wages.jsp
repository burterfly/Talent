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
<script src="js/jsp5.js"></script>
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
   <dd><a href="Information.jsp">个人信息</a></dd>
    <dd><a href="Experience.jsp" >履职经历</a></dd>
    <dd><a href="Wages.jsp"  class="active">工资明细</a></dd>
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
       <h2 class="fl">工资明细</h2>
      </div>
      
      
       <section class="mtb">      
<form:form action="${ pageContext.request.contextPath}/twoadmin/selectHousetwo.do?SId=1" 
      modelAttribute="House" method="post" name="myform" >
        <input type="text" class="textbox textbox_225" placeholder="输入您需要查询的信息"  name="OHid"/> 
        <input type="submit" value="查询" class="group_btn"/> 
  </form:form>
      </section> 
      
      
      
      
      <table class="table">
       <tr>
        <th>时间</th>
        <th>公司名称</th>
        <th>职务</th>
        <th>工资</th>        
       </tr>      
       <tr>
        <td class="center">2015/5/6</td>
        <td class="center">人民银行</td>
        <td class="center">柜员</td>
        <td class="center">5000</td>
       </tr>
       <tr>
        <td class="center">2015/5/6</td>
        <td class="center">人民银行</td>
        <td class="center">柜员</td>
        <td class="center">5000</td>
       </tr>
      <tr>
        <td class="center">2015/5/6</td>
        <td class="center">人民银行</td>
        <td class="center">柜员</td>
        <td class="center">5000</td>
       </tr>
       
      </table>
      <aside class="paging">
       <a>第一页</a>
       <a>1</a>
       <a>2</a>
       <a>3</a>
       <a>…</a>
       <a>1004</a>
       <a>最后一页</a>
      </aside>
 </div>
</section>
</body>
</html>
