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
<script type="text/javascript" src="js/livevalidation_standalone.compressed.js"></script>

<script type="text/javascript">
	function hide()
	{
		document.getElementById('half').style.visibility='visible';
		document.getElementById('detail').style.visibility='collapse';			
	}
        
	function show()
	{		
		document.getElementById('detail').style.visibility='visible';
		document.getElementById('half').style.visibility='collapse';
        }	
	
</script>
<style type="text/css">
.abc {
	color:#F00;        
	}
#message
{
	color:#F00;
}
</style>
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
<body id="page5" onload="show()">
<div class="body1">
	<div class="main">
<!-- header -->
		<header>
			<div class="wrapper">
				<h1><a href="index.jsp" id="logo">Hope Center</a></h1>
				<nav>
					<ul id="top_nav">
						<li><a href="index.jsp"><img src="images/top_icon1.gif" alt=""></a></li>						
						<li class="end" style="color:#FFF; font-size:12px"><a href="login.jsp">Login</a></li>                        
					</ul>
				</nav>
				<nav>
					<ul id="menu">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="mission.jsp">Our Mission</a></li>
						<li><a href="news.jsp">News &amp; Press</a></li>
						<li><a href="help.jsp">How to Help</a></li>
						<li id="menu_active"><a href="donate.jsp">Donate</a></li>
					</ul>
				</nav>
			</div>
		</header><div class="ic"><div class="inner_copy"></div></div>
<!-- / header -->
<!-- content -->
		<article id="content">
			
			<div class="wrapper">
				<div class="pad_left2 relative">
					<h4 class="color3">Donation Form</h4>
                                        <center><table>
                        <tr style="color:#0F6; font-size:18px">
                            <td colspan="2">
                                
                              <label>
                                <input type="radio" name="option" checked="checked" value="yes" id="option_0" onClick="show()"/>
                                I want to be included in Donor List</label>
                                <br>
                              <label>
                                <input type="radio" name="option" value="no" id="option_1" onClick="hide()" />
                                I don't want to be included in Donor List</label>
                                                                                    
                            </td>                                
                            </tr>
                                            </table></center>
                        <div id="detail">
                     <form name="detail" style="color:#FFF; font-size:16px" method="post" action="AddContributionServlet" >
                     <input type="hidden" name="option" value="yes" />
					  <center><table width="550">                          
                            <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                             <tr>
                            	<td width="200">Name : </td>                               
                                <td width="300"><span class="abc"><input type="text"  size="50" name="donor name" id="donor name"/>
                                <script type="text/javascript">
                                var name = new LiveValidation('donor name',{onlyOnKeyUp: true});
                                name.add( Validate.Presence, { failureMessage: "Must fill!" } );
                                </script>
                                </span></td>
                            </tr>
                             <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                            	<td>Address : </td>
                                <td><span class="abc"><textarea rows="3" cols="47" name="donor address" id="donor address" >                                </textarea>
                                <script type="text/javascript">
                                var address = new LiveValidation('donor address',{onlyOnKeyUp: true});
                                address.add( Validate.Presence, { failureMessage: "Must fill!" });
                                </script>
                                </span>
                                </td>
                            </tr>
                             <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                            	<td>E-mail : </td>
                                <td><span class="abc"><input type="text" size="50" name="donor email" id="donor email" />
                                <script type="text/javascript">
                                var email = new LiveValidation('donor email', { validMessage: "Valid!",onlyOnKeyUp: true });
                                email.add( Validate.Presence, { failureMessage: "Must fill!" } );
                                email.add( Validate.Email,{ failureMessage: "Not Valid!" }  );
                                </script>
                                </span>
                                </td>
                            </tr>
                             <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                            	<td>Contact No : </td>
                                <td><span class="abc"><input type="text" size="50" name="contact no" id="contact no" />
                                <script type="text/javascript">
                                var contact = new LiveValidation('contact no',{onlyOnKeyUp: true});
                                contact.add( Validate.Numericality); 
                                </script>
                                </span></td>
                            </tr>
                            <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                            	<td>District : </td>
                                <td><select name="Distrct Name" size="1">
                      
                      <option value="comilla">comilla</option>                     
                      <option value="feni">feni</option>
                      <option value="satkhira">satkhira</option>
                    <option value="bogora"   >bogora</option>
                    <option value="jhalokati"   >jhalokati</option>                    
                    <option value="rongpur"   SELECTED  >rongpur</option>                    
                    
                    </select></td><br />
                            </tr>
                             <tr>
                            	<td>&nbsp;</td>
                                <td></td>
                            </tr>
                            <tr>
                            	<td>Donation Method : </td>
                                <td><p>
                                    <label>
                                    <select name="donation method" size="1" id="payment">
                                        <option value="VISA">VISA</option>
                                        <option value="American Express">American Express</option>
                                        <option value="Master Card">Master Card</option>
                                        <option value="PayPal">PayPal</option>
                                        <option value="Bank Account Withdrawal">Bank Account</option>
                                        </select>
                                        </label>                                    
                                  <br>
                                </p></td>
                            </tr>
                            <tr>
                            	<td>Donation Amount : </td>
                                <td><span class="abc"><input type="text" size="30" name="donationAmount" id="donationAmount" /></span> (Currency in $ )
                                <script type="text/javascript">
                                var amount = new LiveValidation('donationAmount',{onlyOnKeyUp: true});
                                amount.add( Validate.Numericality );
                                amount.add( Validate.Presence, { failureMessage: "Must fill!" });
                                
                                var f18 = new LiveValidation('option',{onlyOnKeyUp: true});
                                f18.add( Validate.Acceptance, { failureMessage: "Must fill!" } );
                                </script>
                                </td>
                                
                            </tr>
                            <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                            	<td>&nbsp;</td>
                                <td><input type="submit" value="Donate" /></td><br />
                            </tr>
                            <tr>
                            	<td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table></center>
					</form>
                    </div>
                    
                    <div id="half">
                    <form name="half"  style="color:#FFF; font-size:16px" method="post" action="AddContributionServlet">
                    <input type="hidden" name="option" value="no" />
                    <center><table>
                    <tr>
                    <td>Country : </td>
                    <td><select name="Distrct Name" size="1">
                      
                      <option value="comilla">comilla</option>                     
                      <option value="feni">feni</option>
                      <option value="satkhira">satkhira</option>
                    <option value="bogora"  >bogora</option>
                    <option value="jhalokati"  >jhalokati</option>                    
                    <option value="rongpur"   SELECTED  >rongpur</option>                    
                    
                    </select></td><br />
                </tr>
                 <tr>
                    <td>&nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Donation Method : </td>
                    <td><p>
                        <label>
                        <select name="donation method" size="1" id="payment">
                            <option value="VISA">VISA</option>
                            <option value="American Express">American Express</option>
                            <option value="Master Card">Master Card</option>
                            <option value="PayPal">PayPal</option>
                            <option value="Bank Account Withdrawal">Bank Account</option>
                            </select>
                        </label>                                      
                      <br>
                    </p></td>
                </tr>
                    <tr>
                        <td>Donation Amount : </td>
                        <td><span class="abc"><input type="text" name="donationAmount" id="halfdonationAmount" /></span> (Currency in $ )
                        <script type="text/javascript">
                        var amount = new LiveValidation('halfdonationAmount',{onlyOnKeyUp: true});
                        amount.add( Validate.Numericality );
                        amount.add( Validate.Presence, { failureMessage: "Must fill!" });
                        
                        var f18 = new LiveValidation('option',{onlyOnKeyUp: true});
                        f18.add( Validate.Acceptance, { failureMessage: "Must fill!" } );
                        </script>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Donate" /></td><br />
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    </table></center>
                    </form>
                    </div>
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

</body>
</html>