<%-- 
    Document   : addgym
    Created on : Mar 3, 2018, 5:57:15 PM
    Author     : mypc
--%>

<%@page import="java.sql.*"%>
<%@page import="java.time.*"%>

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
                                    
                                        <p class="colored bold">Customer id:</p><input type="text" name="oid"/><br/>
                                        <p class="colored bold">Customer name:</p><input type="text" name="oname"/><br/>
                                        <p class="colored bold">Customer's address:</p><input type="textbox" name="oaddress"/><br/>
                                        <p class="colored bold">Customer's email:</p><input type="text" name="oemail"/><br/>
					<p class="colored bold">Customer's conatct:</p><input type="text" name="ocontact"/><br/>
                                        <p class="colored bold">Customer's password:</p><input type="text" name="opassword"/><br/>
                                        <p class="colored bold">Customer's DOB:</p><input type="date" name="odob"/><br/>
                                        <p class="colored bold">Customer's height in cm:</p><input type="text" name="oheight"/><br/>
                                        <p class="colored bold">Customer's weight:</p><input type="text" name="oweight"/><br/>
                                        <p class="colored bold">Customer's gender:</p><p class="colored bold">Male:<input type="radio" name="ocategory" value="m"/> Female:<input type="radio" name="ocategory" value="f"/> </p><br/>
                                        <p class="colored bold">Customer's lifestyle:</p><p class="colored bold">Sedentary:<input type="radio" name="oroutine" value="s"/> Moderate:<input type="radio" name="oroutine" value="m"/> Intense:<input type="radio" name="oroutine" value="i"/></p><br/>
                                        <p class="colored bold">Customer's password:</p><input type="text" name="opassword"/><br/>
                                        <input type="submit" name="submit" value="Done!"/>
					</form>
			
<% 
   String userid = (String)(session.getAttribute("userid"));
   String ocategory = request.getParameter("ocategory");    
   String oname =request.getParameter("oname");
   String oaddress= request.getParameter("oaddress");
   String oemail= request.getParameter("oemail");
   String ocontact= request.getParameter("ocontact");
   String opassword= request.getParameter("opassword");
   String oid= request.getParameter("oid");
   String gid=null; 
   String oroutine = request.getParameter("oroutine");
   String oheight = request.getParameter("oheight");
   String oweight = request.getParameter("oweight");
   String odob = request.getParameter("odob");
   String ogender = request.getParameter("ogender");
   double routine=0;
   double bmr=0;
   int age=0;
   LocalDate dob = null;
   if(odob!=null)
   {
   dob = LocalDate.parse(odob);
   
   LocalDate curDate = LocalDate.now();
   age = Period.between(dob, curDate).getYears();
   }
   if (oroutine == "s")
                            routine = 1.2;
                        else if (oroutine=="m")
                            routine = 1.4625;
                        else if (oroutine=="i")
                            routine = 1.8125;
   if (ogender== "m") {
                            bmr = 66.5 + (13.75 * Double.parseDouble(oweight) + (5.003 * Double.parseDouble(oheight) - (6.755 * age)));
                        } else if (ogender == "f") {
                            bmr = 655.1 + (9.563 * Double.parseDouble(oweight) + (1.850 * Double.parseDouble(oheight) - (4.676 * age)));
                        }
        Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
        //String sql = "INSERT INTO gyms(gym_id, name, address, contact, email) VALUES(?,?,?,?,?)";
        //PreparedStatement pstmt = con.prepareStatement(sql);      
                try{
        ResultSet rs = ps.executeQuery("select * from user_detail where user_id='"+userid+"''");
        while(rs.next())
        {
        gid = rs.getString("gym_id");
                }
       //out.println("<h1>details are" +name+ " "+ category+"</h1>");
        
               }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                  
        try{
       
      int count1 = ps.executeUpdate("insert into user_detail values ('" + oid + "','" + oname + "','" + oemail + "','" + ocontact + "','" + oaddress + "','" + ocategory + "','" + gid + "','" + opassword + "')");
      int count2 = ps.executeUpdate("insert into customer_personal_data values ('" + oid + "','" + odob + "','" + oheight + "','" + oweight + "','" + ogender + "','" + ocategory + "','" + oroutine + "','" + bmr + "')");
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
