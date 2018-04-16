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
        <a href="Admin.jsp"><h1 class="colored bold">Go back to Home</h1></a>

        <% 
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    %>
    <h2 class=" condensed uppercase no-padding no-margin bold gray1">You're not logged in!Login<a href='index.jsp'> <h2 class=" condensed uppercase no-padding no-margin bold colored">HERE</h2></a> </h2>    
    <% 
        } 
        else{
    %>
	
   <section id="features" class="container">

		<div class="inner">

			<!-- Header -->
			<h1 class="colored fancy">Fitness Ace!</span></h1>

			<!-- Login box-->
				<form name="login" method="post" action="">
                                    <p class="colored bold">Gym id:</p><input type="text" name="gid" /><br/>
				<p class="colored bold">Name:</p><input type="text" name="name" /><br/>
					<p class="colored bold">Address:</p><input type="textbox" name="address"/><br/>
                                        <p class="colored bold">email:</p><input type="text" name="email"/><br/>
                                        <p class="colored bold">Contact:</p><input type="text" name="contact"/><br/>
                                        <p class="colored bold">Owner id:</p><input type="text" name="oid"/><br/>
                                        <p class="colored bold">Owner name:</p><input type="text" name="oname"/><br/>
                                        <p class="colored bold">Owner's address:</p><input type="textbox" name="oaddress"/><br/>
                                        <p class="colored bold">Owner's email:</p><input type="text" name="oemail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="invalid"/><br/>
					<p class="colored bold">Owner's conatct:</p><input type="text" name="ocontact" pattern="^(\+\d{1,3}[- ]?)?\d{10}$" title="10 digits needed"/><br/>
                                        <p class="colored bold">Owner's password:</p><input type="text" name="opassword"/><br/>
                                        <input type="submit" name="submit" value="Done!"/>
					</form>
			
<% 
   
   String ocategory = "o";    
   String oname =request.getParameter("oname");
   String oaddress= request.getParameter("oaddress");
   String oemail= request.getParameter("oemail");
   String ocontact= request.getParameter("ocontact");
   String opassword= request.getParameter("opassword");
   String gname= request.getParameter("name");
   String gaddress= request.getParameter("address");
   String gemail= request.getParameter("email");
   String gcontact= request.getParameter("contact");
   String gid= request.getParameter("gid");
   String oid= request.getParameter("oid");
    
  
        Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
        //String sql = "INSERT INTO gyms(gym_id, name, address, contact, email) VALUES(?,?,?,?,?)";
        //PreparedStatement pstmt = con.prepareStatement(sql);      
        try{
       int count = ps.executeUpdate("insert into gyms values ('" + gid + "','" + gname + "','" + gaddress + "','" + gcontact + "','" + gemail + "')");
      int count1 = ps.executeUpdate("insert into user_detail values ('" + oid + "','" + oname + "','" + oemail + "','" + ocontact + "','" + oaddress + "','" + ocategory + "','" + gid + "','" + opassword + "')");
        
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
