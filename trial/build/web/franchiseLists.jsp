<%-- 
    Document   : franchiseLists
    Created on : 24 Oct, 2018, 5:32:55 AM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>
<div style="overflow-x:auto;">
    <font color='purple'><center><h1>FRANCHISEE LIST</h1></center></font>
  <table>
      <tr>
         <th>COMPANY NAME</th>
         <th>CONTACT PERSON</th>
      </tr>
    
<%

            

                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps = con.prepareStatement("select * from SUREVAC.FRANCHISES");

                    

                 ResultSet rs = ps.executeQuery();   
                while(rs.next())
                 {
                    
                       out.println("<tr>");
                       out.println("<td><font color='blue'>"+rs.getString("FRANCHISEELIST")+"</font></td>");
                       out.println("<td><font color='blue'>"+rs.getString("USERNAME")+"</font></td>");
                       out.println("</tr>");          
                 }

            
            %> 
  </table>
</div>
  


</body>
</html>
