<%-- 
    Document   : removegym
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
					<li><a href="Admin.jsp" class="scroll">Home</a></li>       
					<li><a href="#about" class="scroll">Search gym</a></li> 
                                        <li><a href="#remove" class="scroll">Remove gym</a></li> 
					<li><a href="#clients" class="scroll">Log Out</a></li>
					<li><a href="#contact" class="scroll">Contact</a></li>
				</ul>
		  </div><!-- End Navigation Menu -->
		</div><!-- End Navigation Inner -->
	</section><!-- End Navigation Section -->
            <!-- Controls -->
	<section id="about" class="container waypoint">
		<div class="inner">        
        
			<!-- Header -->
			<form name="login" method="post" action="">
                                    
				<p class="colored bold">Name:</p><input type="text" name="gname" /><br/>
                                        <input type="submit" name="submit" value="Done!"/>
					</form>
               <%         
                   String gname = request.getParameter("gname");
                  char fchar='/';
                   if(gname != null)
                   {
                       
                                fchar = gname.charAt(0); }
                   Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
                try{
        ResultSet rs = ps.executeQuery("select * from gyms where name like='%"+gname+"%' OR name like='"+fchar+"%' ");
        
        out.println(" <table  border='2'>");
        out.println(" <tr> ");
        out.println("<td> Name </td>");
        out.println("<td> Address </td>");
        out.println("<td>Contact</td>");
        out.println("<td>Email</td>");
        out.println("</tr>");
        
        while(rs.next())
        {
        
        
        out.println("<tr>");
        out.println("<td>"+rs.getString(2)+"</td>");
        out.println("<td>"+rs.getString(3)+"</td>");
        out.println("<td>"+rs.getString(4)+"</td>");
        out.println("<td>"+rs.getString(5)+"</td>");
            
        out.println("</tr> </table>"); 
        
        
        }    }
                catch(Exception e)
                {
                    System.out.println(e);
                }
			
			%>
			
					 
			<hr>       <hr>
        
		</div><!-- End About Inner -->
	</section><!-- End About Section -->

   <section id="remove" class="container">

		<div class="inner">

			<!-- Header -->
			<h1 class="colored fancy">Fitness Ace!</span></h1>

			<!-- Login box-->
				<form name="login" method="post" action="">
                                    
				<p class="colored bold">Name:</p><input type="text" name="name" /><br/>
                                        <input type="submit" name="submit" value="Done!"/>
					</form>
			
<% 
   
   // String gname= null;
  
  
    
    

   // gname= request.getParameter("name");
    
  //
      //  Connection con = DatabaseConnect.dbconnect();
      //  Statement ps = con.createStatement();
      //          try{
      // int count1 = ps.executeUpdate("delete from gyms where name='"+gname+"'");           
     //  int count = ps.executeUpdate("delete from gyms where name='"+gname+"'");
        
       //out.println("<h1>details are" +name+ " "+ category+"</h1>");
        
            //   }
             //   catch(Exception e)
              //  {
               //     System.out.println(e);
              //  }
%>
			

		</div> <!-- End Features Inner -->

	</section><!-- End Features Section -->
    

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
