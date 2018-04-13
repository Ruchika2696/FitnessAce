package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import database.DatabaseConnect;

public final class addemployee_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("     ");
 
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    
      out.write("\n");
      out.write("    <h2 class=\" condensed uppercase no-padding no-margin bold gray1\">You're not logged in!Login<a href='index.jsp'> <h2 class=\" condensed uppercase no-padding no-margin bold colored\">HERE</h2></a> </h2>    \n");
      out.write("    ");
 
        } 
        else{
    
      out.write("\n");
      out.write("\t\n");
      out.write("   <section id=\"features\" class=\"container\">\n");
      out.write("\n");
      out.write("\t\t<div class=\"inner\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- Header -->\n");
      out.write("\t\t\t<h1 class=\"colored fancy\">Fitness Ace!</span></h1>\n");
      out.write("\n");
      out.write("\t\t\t<!-- Login box-->\n");
      out.write("\t\t\t\t<form name=\"login\" method=\"post\" action=\"\">\n");
      out.write("                                    \n");
      out.write("                                        <p class=\"colored bold\">Employee id:</p><input type=\"text\" name=\"oid\"/><br/>\n");
      out.write("                                        <p class=\"colored bold\">Employee name:</p><input type=\"text\" name=\"oname\"/><br/>\n");
      out.write("                                        <p class=\"colored bold\">Employee's address:</p><input type=\"textbox\" name=\"oaddress\"/><br/>\n");
      out.write("                                        <p class=\"colored bold\">Employee's email:</p><input type=\"text\" name=\"oemail\"/><br/>\n");
      out.write("\t\t\t\t\t<p class=\"colored bold\">Employee's conatct:</p><input type=\"text\" name=\"ocontact\"/><br/>\n");
      out.write("                                        <p class=\"colored bold\">Employee's password:</p><input type=\"text\" name=\"opassword\"/><br/>\n");
      out.write("                                        <p class=\"colored bold\">Employee type:</p><p class=\"colored bold\">Instructor:<input type=\"radio\" name=\"ocategory\" value=\"i\"/> Nutritionist:<input type=\"radio\" name=\"ocategory\" value=\"n\"/> </p><br/>\n");
      out.write("                                        <input type=\"submit\" name=\"submit\" value=\"Done!\"/>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\n");
 
   String userid = (String)(session.getAttribute("userid"));
   String ocategory = request.getParameter("ocategory");    
   String oname =request.getParameter("oname");
   String oaddress= request.getParameter("oaddress");
   String oemail= request.getParameter("oemail");
   String ocontact= request.getParameter("ocontact");
   String opassword= request.getParameter("opassword");
   String oid= request.getParameter("oid");
   String gid=null; 
  
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
    
       
       
              

      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write("\t\t</div> <!-- End Features Inner -->\n");
      out.write("\n");
      out.write("\t</section><!-- End Features Section -->\n");
      out.write("    \n");
      out.write("\n");
      out.write("\t");

        }

      out.write("\n");
      out.write("\n");
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
