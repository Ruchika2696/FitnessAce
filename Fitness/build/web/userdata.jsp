<%-- 
    Document   : addgym
    Created on : Mar 3, 2018, 5:57:15 PM
    Author     : mypc
--%>

<%@page import="java.sql.*"%>
<%@ page import="database.DatabaseConnect"%>
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
    <a href="Owner.jsp"><h1 class="colored bold">Go back to Home</h1></a>
     <% 
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    %>
    <h2 class=" condensed uppercase no-padding no-margin bold gray1">You're not logged in!Login<a href='index.jsp'> <h2 class=" condensed uppercase no-padding no-margin bold colored">HERE</h2></a> </h2>    
    <% 
        } 
        else{
            
             String userid = null;
            Cookie[] cookies = request.getCookies();
            if(cookies !=null){
        for(Cookie cookie : cookies){
	if(cookie.getName().equals("user_id")) 
            userid = cookie.getValue();
	
}
}
    %>
	
   <section id="features" class="container">

		<div class="inner">

			<!-- Header -->
			<h1 class="colored fancy">Fitness Ace!</span></h1>

			<!-- Login box-->
				<form name="name_form" method="post" action="">
                                    
                                        <p class="colored bold">Name:</p><input type="text" name="name" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="invalid"/>
                                        <input type="submit" name="name_submit" value="Done!"/>

                                </form>
                        <form name="email_form" method="post" action="">
                                    
                                        <p class="colored bold">Email:</p><input type="text" name="email"/>
                                        <input type="submit" name="email_submit" value="Done!"/>

                                </form>
                        <form name="contact_form" method="post" action="">
                                    
                                        <p class="colored bold">Contact:</p><input type="text" name="contact" pattern="^(\+\d{1,3}[- ]?)?\d{10}$" title="10 digits needed"/>
                                        <input type="submit" name="contact_submit" value="Done!"/>

                                </form>
                        <form name="address_form" method="post" action="">
                                    
                                        <p class="colored bold">Address:</p><input type="text" name="address"/>
                                        <input type="submit" name="address_submit" value="Done!"/>

                                </form>
                         <form name="password_form" method="post" action="">
                                    
                                        <p class="colored bold">Password:</p><input type="text" name="password"/>
                                        <input type="submit" name="password_submit" value="Done!"/>

                                </form>
                        <form name="dob_form" method="post" action="">
                                    
                            <p class="colored bold">DOB:</p><input type="text" name="dob" placeholder="yyyy/mm/dd"/>
                                        <input type="submit" name="dob_submit" value="Done!"/>

                                </form>
                        <form name="height_form" method="post" action="">
                                    
                                        <p class="colored bold">Height:</p><input type="text" name="height"/>
                                        <input type="submit" name="height_submit" value="Done!"/>

                                </form>
                        <form name="weight_form" method="post" action="">
                                    
                                        <p class="colored bold">Weight:</p><input type="text" name="weight"/>
                                        <input type="weight_submit" name="password_submit" value="Done!"/>

                                </form>
                                                                
			
<% 
          
   Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
        try{
   if((request.getParameter("name_submit"))!=null)
   {
       String name = request.getParameter("name");
       int count1 = ps.executeUpdate("update user_detail set name='"+name+"' where user_id='"+userid+"'");
   }
   if((request.getParameter("email_submit"))!=null)
   {
       String email = request.getParameter("email");
       int count1 = ps.executeUpdate("update user_detail set email='"+email+"' where user_id='"+userid+"'");
   }
   if((request.getParameter("contact_submit"))!=null)
   {
       String contact = request.getParameter("contact");
       int count1 = ps.executeUpdate("update user_detail set contact='"+contact+"' where user_id='"+userid+"'");
   }
   if((request.getParameter("address_submit"))!=null)
   {
       String address = request.getParameter("address");
       int count1 = ps.executeUpdate("update user_detail set address='"+address+"' where user_id='"+userid+"'");
   }
    if((request.getParameter("password_submit"))!=null)
   {
       String password = request.getParameter("password");
       int count1 = ps.executeUpdate("update user_detail set password='"+password+"' where user_id='"+userid+"'");
   }
     if((request.getParameter("dob_submit"))!=null)
   {
       String dob = request.getParameter("dob");
       int count1 = ps.executeUpdate("update customer_personal_data set dob='"+dob+"' where user_id='"+userid+"'");
   }
      if((request.getParameter("height_submit"))!=null)
   {
       String height = request.getParameter("height");
       int count1 = ps.executeUpdate("update customer_personal_data set height='"+height+"' where user_id='"+userid+"'");
   }
         if((request.getParameter("weight_submit"))!=null)
   {
       String weight = request.getParameter("weight");
       int count1 = ps.executeUpdate("update customer_personal_data set weight='"+weight+"' where user_id='"+userid+"'");
   }
         
      }

  
        
        
      catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    
       
       
              
%>
			

		</div> <!-- End Features Inner -->

	</section><!-- End Features Section -->
    

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
