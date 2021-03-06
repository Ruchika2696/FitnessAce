<%-- 
    Document   : CustomerExerciseRoutine
    Created on : Apr 15, 2018, 9:32:50 PM
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
    <a href="User.jsp"><h1 class="colored bold">Go back to Home</h1></a>
	<section id="features" class="container">

		<div class="inner">

			<!-- Header -->
			<h1 class="colored fancy">Fitness Ace!</span></h1>
                        

            <!-- Controls -->
                        <div>
                            <%         
                                String userid = null;
                                String foodname=null;
                                String measure=null;
            Cookie[] cookies = request.getCookies();
            if(cookies !=null){
        for(Cookie cookie : cookies){
	if(cookie.getName().equals("user_id")) 
            userid = cookie.getValue();
                                
        }}
                  
                try{
                     Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
        ResultSet rs = ps.executeQuery("SELECT ca.name,ca.measure,cc.amount,cc.time from calorie ca,customer_calorie_chart cc where ca.id=cc.cal_id");
        %>
        <table style="width:100%">
            <tr>
                
                <td class="colored bold"><h2>Name</h2></td>
                <td class="colored bold"><h2>Amount</h2></td>
                <td class="colored bold"><h2>Measure</h2></td>
                <td class="colored bold"><h2>Time</h2></td>
                  
            </tr>   
        
        <%
        while(rs.next())
        {
           
            
        %>
        <tr>
            <td class="colored bold"><%=rs.getString("name") %></td>
            <td class="colored bold"><%=rs.getString("amount") %></td>
            <td class="colored bold"><%=rs.getString("measure") %></td>
            <td class="colored bold"><%=rs.getString("time") %></td>
           
            
        </tr>
        <%
        
        }      %></table> </div><%
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
			
			%>
			
					 
        
		</div><!-- End About Inner -->
	</section><!-- End About Section -->

  
    

	
	</div>
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