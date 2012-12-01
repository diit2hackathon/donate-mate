

<%@page import="info.diit.entities.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Distribution</title>
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
<script type="text/javascript" src="js/livevalidation_standalone.compressed.js"></script>


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
    User users = (User)session.getAttribute("users");
    
    if(users==null)
    {
        response.sendRedirect("login.jsp");
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
					<h4 class="color3">Distribution Form</h4>
                    <form style="color:#FFF; font-size:16px" method="post" action="AddDistributionServlet" >
					  <center><table>
                             <tr >
                            	<td>Area : </td>
                                <td><input type="text" size="30" name="distributed country" id="distributed country"/>
                                <script type="text/javascript">
                                var amount = new LiveValidation('distributed country',{onlyOnKeyUp: true});
                                
                                amount.add( Validate.Presence, { failureMessage: "Must fill!" });
                                </script>
                                </td>
                            </tr>
                             <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                            	<td>NGO : </td>
                                <td><input type="text" size="30" name="organisation" id="organisation"/>
                                <script type="text/javascript">
                                var amount = new LiveValidation('organisation',{onlyOnKeyUp: true});                                
                                amount.add( Validate.Presence, { failureMessage: "Must fill!" });
                                </script>
                                </td>
                            </tr>
                             <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>                            
                            <tr>
                            	<td>Distribution Amount: </td>
                                <td><input type="text" name="amount" id="amount" />(Currency in $ )
                                <script type="text/javascript">
                                var amount = new LiveValidation('amount',{onlyOnKeyUp: true});
                                amount.add( Validate.Numericality );
                                amount.add( Validate.Presence, { failureMessage: "Must fill!" });
                                </script></td><br />
                            </tr>
        					<tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                            	<td>&nbsp;</td>
                                <td><input type="submit" value="Donate"/></td><br />
                            </tr>
                            <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table></center>
					</form>                                       
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
						<li class="end active">Contact</li>
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