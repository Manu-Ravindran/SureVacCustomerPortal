<%-- 
    Document   : demo
    Created on : 17 Oct, 2018, 4:41:57 AM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    String s=request.getParameter("val");  
    HttpSession sess=request.getSession();
    sess.setAttribute("Sname", s);
    try
    {  
    Class.forName("org.apache.derby.jdbc.ClientDriver");  
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");  
    PreparedStatement ps=con.prepareStatement("INSERT INTO SUREVAC.CUSTOMER (CNAME)VALUES(?)");  
    ps.setString(1, s);
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
        