<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="applicable-device" content="pc,mobile" />
    <title>关于我们</title>
    
    
    
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/glide.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/online.css"rel="stylesheet" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/jquery.glide.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js" type="text/javascript"></script>
    <script src="js/respond.min.js" type="text/javascript"></script>
    <![endif]-->
</head>

<body>
    
   <header>

        <div class="topBox">
            <div class="borderBottom">
                <div class="container">
                    <div class="welcomeBox">欢迎光临官方企业网站</div>
                    <div class="languageBox">
                        <a href="#" class="en">English</a><a href="#" class="zh">中文版</a>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-8 logo"><a href="index.html"><img src="images/logo.png" alt="MojoCube 官方" /></a></div>

                    <div class="col-xs-6 col-sm-3 col-md-2">
                        <div class="address"></div>
                    </div>

                    <div class="col-xs-6 col-sm-3 col-md-2">
                        <div class="tel">
                            <img src="images/tel.gif" alt="" /><br />400-8888-8888
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <nav class="navbar navbar-static-top navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"></a>             
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">

                        <li><a href="index.jsp">网站首页</a></li>

                        <li class="dropdown">
                            <a href="about.jsp" class="dropdown-toggle" data-toggle="dropdown">关于我们</a><a href="#" id="app_menudown" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-menu-down btn-xs"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li> <a href="about.jsp">公司简介</a></li>
                                
                                
                                
                                <li><a class='' href='contact.jsp'>联系我们</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="article.jsp" class="dropdown-toggle" data-toggle="dropdown">新闻中心</a><a href="#" id="app_menudown" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-menu-down btn-xs"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a class='' href='article.jsp'>公司新闻</a></li>
                                <li><a class='' href='article.jsp'>行业新闻</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="product.jsp" class="dropdown-toggle" data-toggle="dropdown">产品中心</a><a href="#" id="app_menudown" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-menu-down btn-xs"></span></a>
                           
                        </li>

                        <li><a href="album.jsp">案例中心</a></li>

                        <li><a href="comment.jsp">在线留言</a></li>

                        <li><a href="contact.jsp">联系我们</a></li>

                    </ul>
                </div>
            </div>
        </nav>

    </header>
    
    <!-- Banner -->
    <div class="banner">
        <div class="slider">
            <ul class="slider__wrapper">
                <li class="slider__item"><a target="_blank" title="1" href="" style="background-image:url(images/1.jpg)"><img src="images/banner-2.png" alt="MojoCube 官方" /></a></li>
                <li class="slider__item"><a target="_blank" title="2" href="" style="background-image:url(images/2.jpg)"><img src="images/banner-2.png" alt="MojoCube 官方" /></a></li>
            </ul>
        </div>
    </div>
    
    <script type="text/javascript">
        var glide = $('.slider').glide();
    </script>
    
    <!-- 内容 -->
    <div class="container">
        <div class="row">

            <div class="col-xs-12 col-sm-8 col-md-9" id="rightBox">

                <div class="positionBox">
                    <div class="titleBar">
                        <h1>当前位置</h1>
                        <span></span>
                        <a href="index.jsp">首页</a> > <a href="about.jsp">关于我们</a>
                    </div>
                </div>

                <div class="col-sm-12 col-md-12 pad">
                    
                    <div class="detailContent" style="line-height:1.8em">
                    
 上海泉成劳务派遣有限公司成立于2009年，是经上海人力资源和劳动保障局批准，经工商局登记注册成立的一家专业从事国内劳务派遣、劳务输出、电子商务、劳务外包的社会服务机构。早期主要服务于制造业。

       2013年起公司开始提供电商物流下线的人力资源管理服务,主要服务客户有京东商城、京东到家、淘宝、天天果园、1号店、大厨网、荣庆物流等主要服务内容（劳务派遣、固定小时工、短促型用工、劳务外包、劳资纠纷、工伤纠纷）

       2014年起公司开始与电商物流行业开展全方位服务人力资源服务，先后在上海嘉定马陆、朱桥、江桥、上海松江、浦东、昆山陆家、花桥、江苏南通、无锡、浙江台州、杭州、徐州、南京提供人资源服务辅助建仓28次。主要提供的服务有（招聘正式工、固定小时工、劳务派遣工、劳务外包、整合劳务市场资源满足用工需求）2015年我公司启动电商蚂蚁项目针对于互联网电商提供全面，优质的人力资源服务。

       自2013年起我司开始参与618、双11的大型电商促销活动连续3年获得京东商城＊＊供应商的称号。

       公司现有专业的人力资源团队21人（负责人员招聘、管理、劳资纠纷、工伤纠纷与后勤保障）专业的电商物流驻仓管理团队49人，目前在职的电商物流员工720人。 
       
                        <img src="images/3.jpg" alt="" style="width:80%" />
                          
                    </div>
                
                    <div style="height:15px"></div>
                    
                </div>

            </div>

            <div class="col-xs-12 col-sm-4 col-md-3">

                <div class="navigationBox" id="classification">
                    <div class="titleBar">
                        <h1>导航栏目</h1>
                        <span></span>
                    </div>
                    <div class="list">
                        <ul id="firstpane">
                            <li><a class='firstSelected selected' href='about.jsp'>公司简介</a></li>
                            <li><a class='' href='contact.jsp'>联系我们</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="leftContactBox">     
                    <div class="content"> 
                        <p style="padding-top:20px;">联系人：张经理</p>
                        <p>手机：13800138000</p>
                        <p>电话：020-88668888</p>
                        <p>邮箱：mojocube@qq.com</p>
                        <p>地址： 上海市嘉定区嘉唐公路888号</p>
                    </div>
                </div>

            </div>

        </div>
    </div>
    
    <footer>
    
        <div class="copyright">
            <p>
                <a href="about.jsp">公司简介</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                <a href="article.jsp">新闻中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                <a href="product.jsp">产品中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                <a href="contact.jsp">联系我们</a>
            </p>
            <p class="copyright_p">© 2000-2017 MojoCube All Rights Reserved. 更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
        </div>

    </footer>
    
    <script type="text/javascript" src="js/common.js"></script>
    
    <!--客服面板-->
    <!--电脑版-->
    <div id="cmsFloatPanel">

        <div class="ctrolPanel">
            <a class="service" href="#"></a>
            <a class="message" href="#"></a>
            <a class="qrcode" href="#"></a>
            <a class="arrow" title="返回顶部" href="#"></a>
        </div>

        <div class="servicePanel">
            <div class="servicePanel-inner">
                <div class="serviceMsgPanel">
                    <div class="serviceMsgPanel-hd"><a href="#"><span>关闭</span></a></div>
                    <div class="serviceMsgPanel-bd">
                        <!--在线QQ-->
                        <div class="msggroup">
                            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=396288955&site=qq&menu=yes"><img class="qqimg" src="http://wpa.qq.com/pa?p=2:593036114:52" alt="QQ在线客服" />技术支持</a>
                        </div>
                        <!--在线MSN-->
                        <div class="msggroup">
                            <a href="" target="blank"><img class="qqimg" src="images/msn.jpg" alt="MSN在线客服" /> 官方</a>
                        </div>
                        <!--在线SKYPE-->
                        <div class="msggroup">
                            <a href=""><img class="qqimg" src="images/skype.gif" alt="SKYPE在线客服" /> 官方</a>
                        </div>
                        <!--淘宝旺旺-->
                        <div class="msggroup">
                            
                        </div>
                    </div>
                    <div class="serviceMsgPanel-ft"></div>
                </div>
                <div class="arrowPanel">
                    <div class="arrow02"></div>
                </div>
            </div>
        </div>

        <div class="messagePanel">
            <div class="messagePanel-inner">
                <div class="formPanel">

                    <div class="formPanel-bd">
                        <!-- JiaThis Button BEGIN -->
                        <div class="jiathis_style_32x32">
                            <a class="jiathis_button_qzone"></a>
                            <a class="jiathis_button_tsina"></a>
                            <a class="jiathis_button_tqq"></a>
                            <a class="jiathis_button_weixin"></a>
                            <a class="jiathis_button_renren"></a>
                            <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
                        </div>
                        <script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js" charset="utf-8"></script>
                        <!-- JiaThis Button END -->
                        <a type="button" class="btn btn-default btn-xs" href="#" style="margin: 6px 0px 0px 10px;">关闭</a>
                    </div>

                </div>
                <div class="arrowPanel">
                    <div class="arrow01"></div>
                    <div class="arrow02"></div>
                </div>
            </div>
        </div>

        <div class="qrcodePanel">
            <div class="qrcodePanel-inner">
                <div class="codePanel">
                    <div class="codePanel-hd"><span style="float:left">用手机扫描二维码</span><a href="#"><span>关闭</span></a></div>
                    <div class="codePanel-bd">
                        <img src="images/qrcode.jpg" alt="二维码" />
                    </div>
                </div>
                <div class="arrowPanel">
                    <div class="arrow01"></div>
                    <div class="arrow02"></div>
                </div>
            </div>
        </div>

    </div>
    
    <div id="serviceBox" style="display:none">
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=396288955&site=qq&menu=yes"><img class="qqimg" src="http://wpa.qq.com/pa?p=2:593036114:52" alt="QQ在线客服" />技术支持</a>
    </div>

    <script type="text/javascript" src="js/online.js"></script>

    <!--电脑版 end-->

    <!--手机版-->
    <nav class="navbar-default navbar-fixed-bottom footer_nav" style="background:#fafafa;">
        <div class="foot_nav"><a href="javascript:mShare()"><span class="glyphicon glyphicon-share btn-lg" aria-hidden="true"></span>分享</a></div>
        <div class="foot_nav"><a href=""><span class="glyphicon glyphicon-phone btn-lg" aria-hidden="true"></span>电话</a></div>
        <div class="foot_nav" id="serviceBtn"><a onClick="showService()"><span class="glyphicon glyphicon glyphicon-headphones btn-lg" aria-hidden="true"></span>客服</a></div>
        <div class="foot_nav"><a id="gototop" href="#"><span class="glyphicon glyphicon-circle-arrow-up btn-lg" aria-hidden="true"></span>顶部</a></div>
        <div id="mShareBox" style="position: fixed; display: none; z-index: 999; bottom: 47px; width: 100%; height: 45px; background: #fff; border-top: 1px solid #ccc; border-bottom: 1px solid #ccc; padding: 5px;">
            <!-- JiaThis Button BEGIN -->
            <div class="jiathis_style_m"></div>
            <script type="text/javascript" src="http://v3.jiathis.com/code/jiathis_m.js" charset="utf-8"></script>
            <!-- JiaThis Button END -->
        </div>
    </nav>
    <!--手机版 end-->

    <script type="text/javascript">
        function mShare() {
            $("#mShareBox").toggle();
            $("#serviceBox").hide();
        }

        if ($(".banner .slider__wrapper li").length == 0) {
            $(".banner").addClass("emptyBanner");
        }

        function showService() {
            $("#mShareBox").hide();
            $("#serviceBox").toggle();
        }
    </script>

</body>
</html>
