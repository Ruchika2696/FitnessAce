<%-- 
    Document   : index
    Created on : Mar 3, 2018, 1:08:05 PM
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
					<li><a href="#about" class="scroll">About us</a></li>
					<li><a href="#features" class="scroll">Login</a></li>     
					<li><a href="#clients" class="scroll">Gyms</a></li>
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
				<h2 class=" condensed uppercase no-padding no-margin bold gray1">Introducing</h2>
				<h2 class=" condensed uppercase no-padding no-margin bold colored">Fitness Ace</h2>
				<a href="#about" class="scroll"><i class="arrow-down fa fa-3x fa-angle-double-down"></i></a>
			</div><!--End Auto Typocraphic Texts -->
		</div><!-- End V2 area -->
	</section><!-- End Home Section -->

    
	<!-- Fun Acts -->
	<section id="fun-acts" class="container">

		<div class="inner fun-acts">
        <div class="about-margin"></div>
        <a class="about-icon">
			<i class="fa fa-life-ring"></i>
		</a>
        <br />        

			<!-- Header -->
			<h1 class="header light gray1 animated" data-animation="fadeInLeft" data-animation-delay="400">
			 Winners Train,<span class="colored" data-animation="fadeInRight">Losers Complain</span></h1>
			<!-- Description -->
			<p class="h-desc"><span class="colored">Sheer sheding of sweat will lead you to Ace your fitness!!</span></p>

		</div><!-- End Fun Acts Inner -->

	</section><!-- End Fun Acts Section -->
    
    <!-- About -->
	<section id="about" class="container waypoint">
		<div class="inner">        
        
			<!-- Header -->
			<h1 class="header light gray3 fancy"><span class="colored">Know </span>about us</h1>

			<!-- Description -->
			<p class="h-desc gray4">Fitness Ace is<span class="colored bold"> your</span> personalised space to work upon your fitness along with your gym instructors and nutritionists.<br /><br /></p> 
			<hr>       
        
		</div><!-- End About Inner -->
	</section><!-- End About Section -->

	<!-- Login -->
	<section id="features" class="container">

		<div class="inner">

			<!-- Header -->
			<h1 class="colored fancy">Fitness Ace!</span></h1>

			<!-- Login box-->
				<form name="login" method="post" action="LoginControl.jsp">
				<p class="colored bold">USER ID:</p><input type="text" name="uid" /><br/>
					<p class="colored bold">PASSWORD:</p><input type="password" name="pwd"/><br/>
					<input type="submit" name="submit" value="Log in!"/>
					</form>
			

			

		</div> <!-- End Features Inner -->

	</section><!-- End Features Section -->
    
	<!-- Clients -->
	<section id="clients" class="container">

		<!-- Team Inner -->
		<div class="inner team">

			<!-- Header -->
			<h1 class="header light gray3 fancy"><span class="colored">Our </span> Gym Partners</h1>

			<!-- Description -->
			<p class="h-desc gray4">Gyms Associated <span class="colored bold">  with us </span> </p>


			<!-- Members -->
			<div class="team-members inner-details">

				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="0">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/9.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Link -->
									<a href="#"><i class="fa fa-link"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->


				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="100">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/2.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Image -->
									<a href="#"><i class="fa fa-camera"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->


				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="200">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/3.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Link -->
									<a href="#"><i class="fa fa-link"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->


				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="300">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/4.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Image -->
									<a href="#"><i class="fa fa-camera"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->


				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="400">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/5.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Link -->
									<a href="#"><i class="fa fa-link"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->
                
				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="0">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/6.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Link -->
									<a href="#"><i class="fa fa-link"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->


				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="100">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/7.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Image -->
									<a href="#"><i class="fa fa-camera"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->


				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="200">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/8.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Link -->
									<a href="#"><i class="fa fa-link"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->                

				<!-- Member -->
				<div class="col-xs-4 member animated" data-animation="fadeInUp" data-animation-delay="500">
					<div class="member-inner">
						<!-- Team Member Image -->
						<a class="team-image">
							<!-- Img -->
							<img src="images/clients/1.jpg" alt="" />
						</a>
						<div class="member-details">
							<div class="member-details-inner">
								<!-- Name -->
								<h2 class="member-name light">Lorem ipsum dolor</h2>
								<!-- Description -->
								<p class="member-description">Lorem ipsum dolor sit amet consectetur adipiscing.</p>
								<!-- Socials -->
								<div class="socials">
									<!-- Image -->
									<a href="#"><i class="fa fa-camera"></i></a>
								</div><!-- End Socials -->
							</div> <!-- End Detail Inner -->
						</div><!-- End Details -->
					</div> <!-- End Member Inner -->
				</div><!-- End Member -->
			</div><!-- End Members -->
		</div><!-- End Team Inner -->
	</section><!-- End Team Section -->  


    
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