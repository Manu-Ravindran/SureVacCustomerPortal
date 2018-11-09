<%-- 
    Document   : report
    Created on : 24 Oct, 2018, 2:14:11 AM
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
  <table>
      <tr>
         <th>CUSTOMER NAME</th>
         <th>ASSIGNED F.E</th>
         <th>CASE STATUS</th>
      </tr>
    
<%

            

                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps = con.prepareStatement("SELECT  C.CASES,C.CNAME, U.UNAME FROM CUSTOMER C INNER JOIN ASSIGN A INNER JOIN USERS U ON A.FE=U.ID ON C.ID=A.CUST");

                    

                 ResultSet rs = ps.executeQuery();   
                while(rs.next())
                 {
                     String cs=rs.getString("cases");
                     if(cs.equals("Fixed"))
                     {
                       
                       out.println("<tr>");
                       out.println("<td><font color='blue'>"+rs.getString("CNAME")+"</font></td>");
                       out.println("<td><font color='blue'>"+rs.getString("UNAME")+"</font></td>");
                       out.println("<td><font color='blue'>COMPLETED</font></td>");
                       out.println("</tr>");
                    
                       
                       
                       
                     }
                     else
                     {
                       
                       out.println("<tr>");
                       out.println("<td><font color='red'>"+rs.getString("CNAME")+"</font></td>");
                       out.println("<td><font color='red'>"+rs.getString("UNAME")+"</font></td>");
                       out.println("<td><font color='red'>PENDING</font></td>");
                       out.println("</tr>");
                     }
                             
                 }

            
            %> 
  </table>
</div>
  


</body>
</html>
