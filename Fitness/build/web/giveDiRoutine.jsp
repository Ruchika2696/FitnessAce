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
        <a href="Nutritionist.jsp"><h1 class="colored bold">Go back to Home</h1></a>
			
            <!-- Controls -->
	<section id="features" class="container">
		<div class="inner">        
        
			<!-- Header -->
			<form name="login" method="post" action="">
                                    
				<p class="colored bold">UserId:</p><input type="text" name="uid" /><br/>
                                <p class="colored bold">FoodId:</p><input type="text" name="fid" /><br/>
                                <p class="colored bold">Amount:</p><input type="text" name="amount" /><br/>
                                <p class="colored bold">Time:</p><input type="text" name="time" /><br/>
                                
                                        <input type="submit" name="submit" value="Done!"/>
					</form>
                        <div>
       
					 
			
        
		</div><!-- End About Inner -->
	</section><!-- End About Section -->

   
  <% 
           
   
   String uid = request.getParameter("uid");    
   String fid =request.getParameter("fid");
   String amount= request.getParameter("amount");
   String time= request.getParameter("time");
   String status = "N";
   
  
  
        Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
        //String sql = "INSERT INTO gyms(gym_id, name, address, contact, email) VALUES(?,?,?,?,?)";
        //PreparedStatement pstmt = con.prepareStatement(sql);      
        
        try{
       
      int count1 = ps.executeUpdate("insert into customer_calorie_chart values ("+null+",'" + uid + "','" + fid + "','" + amount + "','" + time + "','" +status+ " ')");
        
       //out.println("<h1>details are" +name+ " "+ category+"</h1>");
     
        
 
       
             
           // pstmt.setString(1, gid);
            //pstmt.setString(2, gname);
            //pstmt.setString(3, gaddress);
            //pstmt.set(4, Long.parseLong(request.getParameter("contact")) );
            //pstmt.setString(5,gemail);
            //pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    
       
       
              
%>
			

		</div> <!-- End Features Inner -->

	</section><!-- End Features Section -->
    



    
	
    
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
