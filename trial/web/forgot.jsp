<%-- 
    Document   : forgot
    Created on : 24 Oct, 2018, 5:18:22 AM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .flex{
                    display: flex;
                    justify-content: center;
                    flex-flow: column;
                    align-items: center;
                    height: 100vh;
                    
               }
        </style>
    </head>
    <body>
           
      <div class="flex">
            
        <%
                   
                   int rs=0;
                   String un=request.getParameter("Auser");  
                   String pss=request.getParameter("Apass"); 
                   String list=request.getParameter("Aname");
            Class.forName("org.apache.derby.jdbc.ClientDriver"); 

                    Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps = conn.prepareStatement("UPDATE SUREVAC.CUSTOMER SET  USERNAME=?,PASSWORD=? WHERE CNAME=?");
                    
                    ps.setString(3, list);
                    ps.setString(1, un);
                    ps.setString(2, pss);
                    rs = ps.executeUpdate();
                      
                if(rs>0)
                 {
                     
                     out.println("<H1>SUCCESSFUL</H1></br></br>");
                     out.println("<H3> <a href='index.html'>GO TO HOMEPAGE</a></H3>");
                     
                  
                     
                 }
                
            %>
      </div>
           
     
    </body>
</html>
