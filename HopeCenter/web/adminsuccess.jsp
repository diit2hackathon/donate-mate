<%@page import="info.diit.entities.Distribution"%>
<%@page import="info.diit.entities.Contribution"%>
<%@page import="info.diit.entities.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script> 
<script type="text/javascript" src="js/Vegur_700.font.js"></script>
<script type="text/javascript" src="js/Vegur_400.font.js"></script>
<script type="text/javascript" src="js/Vegur_300.font.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>


<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
	<style type="text/css">
		.box1 figure {behavior:url(js/PIE.htc)}
	</style>
<![endif]-->
<!--[if lt IE 7]>
		<div style='clear:both;text-align:center;position:relative'>
			<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0" alt="" /></a>
		</div>
<![endif]-->
</head>
<body id="page5">
    <%
    
    Distribution dis = (Distribution)session.getAttribute("distribution");
    
    if(dis==null)
    {
        response.sendRedirect("index.jsp");
    }
    %>
       
<div class="body1">
	<div class="main">
<!-- header -->
		<header>
			<div class="wrapper">
				<h1><a href="index.jsp" id="logo">Hope Center</a></h1>
				<nav>
					<ul id="top_nav">
						<li><a href="index.jsp"><img src="images/top_icon1.gif" alt=""></a></li>						
						<li class="end"><a href="logout.jsp">Logout</a></li>                         
					</ul>
				</nav>
				<nav>
					<ul id="menu">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="mission.jsp">Our Mission</a></li>
						<li><a href="news.jsp">News &amp; Press</a></li>
						<li><a href="help.jsp">How to Help</a></li>
						<li ><a href="donate.jsp">Donate</a></li>
					</ul>
				</nav>
			</div>
		</header><div class="ic"><div class="inner_copy">Find best premium <a href="http://blog.templatemonster.com/2011/09/20/joomla-1-7-templates-showcase/" title="Joomla 1.7 templates"> joomla 1.7 templates</a> at blog.templatemonster.com</div></div>
<!-- / header -->
<!-- content -->
		<article id="content">
			<div class="wrapper"></div>
			<div class="wrapper">
				<div class="pad_left2 relative">
					<h4 class="color3">Distribution is Successfully Complete</h4>
                                        
				</div>
			</div>
		</article>
<!-- / content -->
<!-- footer -->
		<footer>
			<div class="wrapper">
				<a href="index.jsp" id="footer_logo"><span>Hope</span>Center</a>
				<ul id="icons">
					<li><a href="#" class="normaltip" title="Facebook"><img src="images/icon1.gif" alt=""></a></li>
					<li><a href="#" class="normaltip" title="Twitter"><img src="images/icon2.gif" alt=""></a></li>
					<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon3.gif" alt=""></a></li>
				</ul>
			</div>	
			<div class="wrapper">
				<nav>
					<ul id="footer_menu">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="mission.jsp">Our Mission</a></li>
						<li><a href="news.jsp">News &amp; Press</a></li>
						<li><a href="help.jsp">How to Help</a></li>
						<li class="end"><a href="donate.jsp">Donate</a></li>
					</ul>
				</nav>
				<div class="tel"><span>+</span><span>088</span>01911784663 & 01737337840</div>
			</div>
			<div id="footer_text">
				Mohammad Saeidur Rahman Saeid</br> Shahnewaj Alom Limon </br> 
			</div>
		</footer>
<!-- / footer -->
	</div>
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>