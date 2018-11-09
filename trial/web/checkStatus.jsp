<%-- 
    Document   : checkStatus
    Created on : 24 Oct, 2018, 12:02:48 AM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            int del1=(Integer)session.getAttribute("custID");
            
            try
            {
                
            
                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps = con.prepareStatement("select cases from SUREVAC.CUSTOMER  WHERE id="+del1+"");

                    

                 ResultSet rs = ps.executeQuery();   
                while(rs.next())
                 {
                     String cs=rs.getString("cases");
                     if(cs.equals("Fixed"))
                     {
                                                RequestDispatcher rp=request.getRequestDispatcher("completed.jsp");
                                                rp.forward(request, response);
                     }
                     else
                     {
                                                RequestDispatcher rq=request.getRequestDispatcher("workingonIT.jsp");
                                                rq.forward(request, response);
                     }
                             
                 }
                
            }
            catch(Exception e){}
            
            %>