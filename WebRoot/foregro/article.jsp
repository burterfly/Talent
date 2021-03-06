<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <title>新闻中心</title>
    
    
    
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
                                <li><a class='' href='about.jsp'>公司简介</a></li>
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
                        <a href="index.jsp">首页</a> > <a href="article.jsp">新闻中心</a>
                    </div>
                </div>

                <div class="col-sm-12 col-md-12 pad">
                    
                    <div class="nameList" style="margin-top:10px;">
                        <ul>
                        
                            <li>
                                <span>1</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2020-01-24</span>
                            </li>
                            
                            <li>
                                <span>2</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                            
                            <li>
                                <span>3</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                            
                            <li>
                                <span>4</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                            
                            <li>
                                <span>5</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                              
                            <li>
                                <span>6</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                              
                            <li>
                                <span>7</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                              
                            <li>
                                <span>8</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                              
                            <li>
                                <span>9</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                              
                            <li>
                                <span>10</span>
                                <a href="article_detail.jsp">上海泉成劳务派遣有限公司开展消防知识讲座</a>
                                <span class="time">2017-01-01</span>
                            </li>
                            
                        </ul>
                    </div>

                    <div class='pageBar'><div class='pageList'><a class='selected'>1</a></div></div>

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
                            <li><a class='' href='article.jsp'>公司新闻</a></li>
                            <li><a class='' href='article.jsp'>行业资讯</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="leftContactBox">     
                    <div class="content"> 
                        <p style="padding-top:20px;">联系人：张经理</p>
                        <p>手机：13800138000</p>
                        <p>电话：020-88668888</p>
                        <p>邮箱：mojocube@qq.com</p>
                        <p>地址： 广东省广州市天河区天粤垦路88号</p>
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
