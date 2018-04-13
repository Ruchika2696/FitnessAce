<%-- 
    Document   : LoginControl
    Created on : Mar 3, 2018, 2:04:28 PM
    Author     : mypc
--%>

<%@page import="java.sql.*"%>
<%@ page import="database.DatabaseConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <%
            String name = null;
            String category =null;
            String id = request.getParameter("uid");
            String password= request.getParameter("pwd");
        Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
                try{
        ResultSet rs = ps.executeQuery("select * from user_detail where user_id='"+id+"' and password='"+password+"'");
        while(rs.next())
        {
        name = rs.getString("name");
        category =  rs.getString("category");
        }
       //out.println("<h1>details are" +name+ " "+ category+"</h1>");
        
               }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                    
       
        session.setAttribute("userid",id);
        Cookie user_id = new Cookie("user_id", id);
        response.addCookie(user_id);
        char u = category.charAt(0);
        switch(u)
        {
            case 'a':
                response.sendRedirect("Admin.jsp");
                break;
            case 'o':
                response.sendRedirect("Owner.jsp");
                break;
            case 'u':
                response.sendRedirect("User.jsp");
                break;
            case 'i':
                response.sendRedirect("Instructor.jsp");
                break;
            case 'n':
                response.sendRedirect("Nutritionist.jsp");
                break;
        }
        %>
    </body>
</html>
