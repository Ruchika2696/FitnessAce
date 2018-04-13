package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import database.DatabaseConnect;

public final class removegym_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <title>Fitness</title>\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />\n");
      out.write("    <!--Favicon -->\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"images/favicon.jpg\" />\n");
      out.write("\t\t\n");
      out.write("\t<!-- CSS Files -->\n");
      out.write("\t\t\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/reset.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/animate.min.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/font-awesome.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/owl.carousel.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/responsive.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/player/YTPlayer.css\" />\n");
      out.write("\t<link href=\"css/pro-bars.css\" rel=\"stylesheet\" />\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t<!-- End CSS Files -->\n");
      out.write(" \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<!-- Navigation -->\n");
      out.write("\t<section id=\"navigation\" class=\"dark-nav\">\n");
      out.write("\t\t<!-- Navigation Inner -->\n");
      out.write("\t\t<div class=\"nav-inner\">\n");
      out.write("\t\t\t<!-- Site Logo -->\n");
      out.write("\t\t\t<div class=\"site-logo fancy\">\n");
      out.write("\t\t\t\t<a href=\"#\" id=\"logo-text\" class=\"scroll logo\">Fitness Ace\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</div><!-- End Site Logo -->\n");
      out.write("\t\t\t<a class=\"mini-nav-button gray2\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("\t\t\t<!-- Navigation Menu -->\n");
      out.write("\t\t    <div class=\"nav-menu\">\n");
      out.write("\t\t\t\t<ul class=\"nav uppercase\">\n");
      out.write("\t\t\t\t\t<li><a href=\"Admin.jsp\" class=\"scroll\">Home</a></li>       \n");
      out.write("\t\t\t\t\t<li><a href=\"#about\" class=\"scroll\">Search gym</a></li> \n");
      out.write("                                        <li><a href=\"#remove\" class=\"scroll\">Remove gym</a></li> \n");
      out.write("\t\t\t\t\t<li><a href=\"#clients\" class=\"scroll\">Log Out</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#contact\" class=\"scroll\">Contact</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t  </div><!-- End Navigation Menu -->\n");
      out.write("\t\t</div><!-- End Navigation Inner -->\n");
      out.write("\t</section><!-- End Navigation Section -->\n");
      out.write("            <!-- Controls -->\n");
      out.write("\t<section id=\"about\" class=\"container waypoint\">\n");
      out.write("\t\t<div class=\"inner\">        \n");
      out.write("        \n");
      out.write("\t\t\t<!-- Header -->\n");
      out.write("\t\t\t<form name=\"login\" method=\"post\" action=\"\">\n");
      out.write("                                    \n");
      out.write("\t\t\t\t<p class=\"colored bold\">Name:</p><input type=\"text\" name=\"gname\" /><br/>\n");
      out.write("                                        <input type=\"submit\" name=\"submit\" value=\"Done!\"/>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("               ");
         
                   String gname = request.getParameter("gname");
                  char fchar='/';
                   if(gname != null)
                   {
                       
                                fchar = gname.charAt(0); }
                   Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
                try{
        ResultSet rs = ps.executeQuery("select * from gyms where name like='%"+gname+"%' OR name like='"+fchar+"%' ");
        
      out.write("\n");
      out.write("        <table style=\"width:100%\">\n");
      out.write("            <tr>\n");
      out.write("                <th class=\"colored bold\">Name</th>\n");
      out.write("            <th class=\"colored bold\">Address</th>\n");
      out.write("            <th class=\"colored bold\">Contact</th>\n");
      out.write("            <th class=\"colored bold\" >Email</th>\n");
      out.write("        </tr>\n");
      out.write("        ");

        while(rs.next())
        {
        
        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td>");
      out.print(rs.getString("name") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("address") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("contact") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("email") );
      out.write("</td>\n");
      out.write("            \n");
      out.write("        </tr>\n");
      out.write("        ");

        
        }      
      out.write("</table> ");

                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
			
			
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t \n");
      out.write("\t\t\t<hr>       <hr>\n");
      out.write("        \n");
      out.write("\t\t</div><!-- End About Inner -->\n");
      out.write("\t</section><!-- End About Section -->\n");
      out.write("\n");
      out.write("   <section id=\"remove\" class=\"container\">\n");
      out.write("\n");
      out.write("\t\t<div class=\"inner\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- Header -->\n");
      out.write("\t\t\t<h1 class=\"colored fancy\">Fitness Ace!</span></h1>\n");
      out.write("\n");
      out.write("\t\t\t<!-- Login box-->\n");
      out.write("\t\t\t\t<form name=\"login\" method=\"post\" action=\"\">\n");
      out.write("                                    \n");
      out.write("\t\t\t\t<p class=\"colored bold\">Name:</p><input type=\"text\" name=\"name\" /><br/>\n");
      out.write("                                        <input type=\"submit\" name=\"submit\" value=\"Done!\"/>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\n");
 
   
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

      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write("\t\t</div> <!-- End Features Inner -->\n");
      out.write("\n");
      out.write("\t</section><!-- End Features Section -->\n");
      out.write("    \n");
      out.write("\n");
      out.write("\t\t<!-- Clients -->\n");
      out.write("\t<section id=\"clients\" class=\"container\">\n");
      out.write("\t<div class=\"inner team\">\n");
      out.write("\t\t<h1 class=\"colored\" class=\"header light gray3 fancy\"> Are you sure?</h1><br>\n");
      out.write("                <form name='logout' method=\"post\" action=''>\n");
      out.write("\t\t<input type=\"submit\" name=\"submit\" value=\"YES!\"/>\n");
      out.write("                </form>\n");
      out.write("                ");

                String logout = null;
                logout= request.getParameter("submit");
                if(logout!=null)
                {
                session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
                }
                
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\t</section><!-- End Team Section -->  \n");
      out.write("    \n");
      out.write("\t\n");
      out.write("    \n");
      out.write("\t<!-- Contact Section -->\n");
      out.write("\t<section id=\"contact\" class=\"container parallax4\">\n");
      out.write("\t\t<!-- Contact Inner -->\n");
      out.write("\t\t<div class=\"inner contact\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- Form Area -->\n");
      out.write("\t\t\t<div class=\"contact-form\">\n");
      out.write("            \n");
      out.write("            \t<h4 class=\"header light gray3 fancy\"><span class=\"colored\">Contact</span> Us</h4>\n");
      out.write("                <p class=\"h-desc white\">To join us or ask us for any help<br />\n");
      out.write("                Email us at:</p>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div><!-- End Contact Form Area -->\n");
      out.write("\t\t</div><!-- End Inner -->\n");
      out.write("\t</section><!-- End Contact Section -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<!-- Footer -->\n");
      out.write("\t<footer id=\"footer\" class=\"footer\">\n");
      out.write("\t\t<!-- Your Company Name -->\n");
      out.write("        <img src=\"images/logo-icon.png\" width=\"200\" alt=\"Logo\" />\n");
      out.write("\t\t<!-- Copyright -->\n");
      out.write("\t\t<p class=\"copyright normal\">© 2014 <span class=\"colored\">Fitness.</span> All Rights Reserved.</p>\n");
      out.write("\t</footer><!-- End Footer -->\n");
      out.write("\n");
      out.write("\t<!-- JS Files -->\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery-1.11.0.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.appear.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/modernizr-latest.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/SmoothScroll.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.parallax-1.1.3.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.superslides.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.flexslider.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.mb.YTPlayer.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.fitvids.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.slabtext.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/plugins.js\"></script>\n");
      out.write("\n");
      out.write("\t<script>\n");
      out.write("\n");
      out.write("  $(\"a.about-icon\").hover(function () {\n");
      out.write("    $(this).children(\"i\").addClass(\"fa-spin\");\n");
      out.write(" }, function(){\n");
      out.write(" \t$(this).children(\"i\").removeClass(\"fa-spin\");\n");
      out.write(" });\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}