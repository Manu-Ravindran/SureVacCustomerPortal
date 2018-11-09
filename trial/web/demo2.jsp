<%-- 
    Document   : demo2
    Created on : 18 Oct, 2018, 8:32:19 PM
    Author     : Sajid
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
     
    String no=request.getParameter("val2"); 
    String nm=(String)session.getAttribute("Sname");
     
    try
    {  
    Class.forName("org.apache.derby.jdbc.ClientDriver");  
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");  
    PreparedStatement ps=con.prepareStatement("UPDATE SUREVAC.CUSTOMER SET EMAIL=? WHERE CNAME=?");  
    ps.setString(1,no);
    ps.setString(2,nm);
    
    int rs=ps.executeUpdate();  
    if(rs>1)
    {
        out.println("Suceess");
    }
    con.close();  
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }  
    %>  