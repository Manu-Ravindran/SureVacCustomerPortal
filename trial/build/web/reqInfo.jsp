<%-- 
    Document   : reqInfo
    Created on : 22 Oct, 2018, 7:26:52 AM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
  <form action="customerInfo">


    <hr>

    <label for="email"><b>CUSTOMER INFO</b></label>
    <select name="na">
               <option value="select">SELECT</option>
        <%
            
                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps = con.prepareStatement("select * from SUREVAC.CUSTOMER ");

                    

                 ResultSet rs = ps.executeQuery();   
                while(rs.next())
                 {
                     out.println("<option value='"+rs.getInt("id")+"'>"+rs.getInt("id")+"</option>");
                     
                  
                     
                 }
                
          
                
            %>
            
               </select></br></br>
               <input type="submit" value="REQUEST">
               </form>
    </body>
</html>
