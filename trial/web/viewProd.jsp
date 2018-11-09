<%-- 
    Document   : viewProd
    Created on : 19 Oct, 2018, 4:42:15 AM
    Author     : Sajid
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
     
    String s=request.getParameter("id"); 
    
    int d=Integer.parseInt(s); 
    try
    {  
    Class.forName("org.apache.derby.jdbc.ClientDriver");  
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");  
    PreparedStatement ps=con.prepareStatement("select pic from SUREVAC.PRODUCT where id=?");  
    ps.setInt(1,d);
    
    ResultSet rs=ps.executeQuery();  
    if(rs.next())
    {  
   
    
    byte[] byteArray=rs.getBytes("pic");
    System.out.println(byteArray);
    response.setContentType("image/jpg");
    OutputStream os=response.getOutputStream();
    os.write(byteArray);
    os.flush();
    os.close();
    
    }  
    con.close(); 
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }  
    %>  