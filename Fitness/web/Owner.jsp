<%-- 
    Document   : Owner
    Created on : Mar 3, 2018, 2:36:04 PM
    Author     : mypc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>Fitness</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!--Favicon -->
	<link rel="icon" type="image/png" href="images/favicon.jpg" />
		
	<!-- CSS Files -->
		
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/animate.min.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/font-awesome.css" />
	<link rel="stylesheet" href="css/owl.carousel.css" />
	<link rel="stylesheet" href="css/responsive.css" />
	<link rel="stylesheet" href="css/player/YTPlayer.css" />
	<link href="css/pro-bars.css" rel="stylesheet" />
	

	<!-- End CSS Files -->
 
</head>

<body>

       <% 
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    %>
    <h2 class=" condensed uppercase no-padding no-margin bold gray1">You're not logged in!Login<a href='index.jsp'> <h2 class=" condensed uppercase no-padding no-margin bold colored">HERE</h2></a> </h2>    
    <% 
        } 
        else{
    %>
	<!-- Navigation -->
	<section id="navigation" class="dark-nav">
		<!-- Navigation Inner -->
		<div class="nav-inner">
			<!-- Site Logo -->
			<div class="site-logo fancy">
				<a href="#" id="logo-text" class="scroll logo">Fitness Ace
				</a>
			</div><!-- End Site Logo -->
			<a class="mini-nav-button gray2"><i class="fa fa-bars"></i></a>
			<!-- Navigation Menu -->
		    <div class="nav-menu">
				<ul class="nav uppercase">
					<li><a href="#home" class="scroll">Home</a></li>       
					<li><a href="#about" class="scroll">Controls</a></li> 
					<li><a href="#clients" class="scroll">Log Out</a></li>
					<li><a href="#contact" class="scroll">Contact</a></li>
				</ul>
		  </div><!-- End Navigation Menu -->
		</div><!-- End Navigation Inner -->
	</section><!-- End Navigation Section -->


	<!-- Home Section -->
	<section id="home" class="relative"> 	
		<div id="slides">
			<div class="slides-container relative">
				<!-- Slider Images -->
				<div class="image2"></div>
                <div class="image1"></div>
				<div class="image3"></div>
                <div class="image4"></div>
				 <!-- End Slider Images -->	 
			</div>
			<!-- Slider Controls -->
			<nav class="slides-navigation">
			  <a href="#" class="next"></a>
			  <a href="#" class="prev"></a>
			</nav>
		</div><!-- End Home Slides -->
		<div class="v2 absolute">
			<!-- Auto Typocraphic Texts -->
			<div class="typographic">
            	<!-- Your Logo -->
				<div class="logo">
					<img src="images/logo-icon.png" width="200" alt="Logo" />
				</div>
				<h2 class=" condensed uppercase no-padding no-margin bold gray1">Welcome to</h2>
				<h2 class=" condensed uppercase no-padding no-margin bold colored">Fitness Ace</h2>
				<a href="#about" class="scroll"><i class="arrow-down fa fa-3x fa-angle-double-down"></i></a>
			</div><!--End Auto Typocraphic Texts -->
		</div><!-- End V2 area -->
	</section><!-- End Home Section -->

    
	
    <!-- Controls -->
	<section id="about" class="container waypoint">
		<div class="inner">        
        
			<!-- Header -->
			<h1 class="header light gray3 fancy"><span class="colored">What are you </span>upto?</h1>
			<br>
                       <a href="addemployee.jsp"> <h3 class="header light gray3 fancy"><span class="colored">ADD Employee</span></h3>
                       <a href="addcustomer.jsp"> <h3 class="header light gray3 fancy"><span class="colored">ADD Customer</span></h3>
                        <a href="removeEmployee.jsp"> <h3 class="header light gray3 fancy"><span class="colored">REMOVE Employee</span></h3>
                       <a href="removeCustomer.jsp">  <h3 class="header light gray3 fancy"><span class="colored">REMOVE Customer</span></h3>
			 <a href="searchemployee.jsp"><h3 class="header light gray3 fancy"><span class="colored">Employee Records</span></h3>
			 <a href="searchcustomer.jsp"><h3 class="header light gray3 fancy"><span class="colored">Customer Records</span></h3>
			
					 
			<hr>       <hr>
        
		</div><!-- End About Inner -->
	</section><!-- End About Section -->

	
    
	<!-- Clients -->
		<!-- Clients -->
	<section id="clients" class="container">
	<div class="inner team">
		<h1 class="colored" class="header light gray3 fancy"> Are you sure?</h1><br>
                <form name='logout' method="post" action=''>
		<input type="submit" name="submit" value="YES!"/>
                </form>
                <%
                String logout = null;
                logout= request.getParameter("submit");
                if(logout!=null)
                {
                session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
                }
                %>
	</div>
	</section><!-- End Team Section -->  
<%
        }
%> 


    
	<!-- Contact Section -->
	<section id="contact" class="container parallax4">
		<!-- Contact Inner -->
		<div class="inner contact">

			<!-- Form Area -->
			<div class="contact-form">
            
            	<h4 class="header light gray3 fancy"><span class="colored">Contact</span> Us</h4>
                <p class="h-desc white">To join us or ask us for any help<br />
                Email us at:</p>
				
			</div><!-- End Contact Form Area -->
		</div><!-- End Inner -->
	</section><!-- End Contact Section -->



	



	<!-- Footer -->
	<footer id="footer" class="footer">
		<!-- Your Company Name -->
        <img src="images/logo-icon.png" width="200" alt="Logo" />
		<!-- Copyright -->
		<p class="copyright normal">© 2014 <span class="colored">Fitness.</span> All Rights Reserved.</p>
	</footer><!-- End Footer -->

	<!-- JS Files -->
	
	
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.appear.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/modernizr-latest.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.superslides.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/jquery.mb.YTPlayer.js"></script>
	<script type="text/javascript" src="js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="js/jquery.slabtext.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>

	<script>

  $("a.about-icon").hover(function () {
    $(this).children("i").addClass("fa-spin");
 }, function(){
 	$(this).children("i").removeClass("fa-spin");
 });



</body>

</html>
