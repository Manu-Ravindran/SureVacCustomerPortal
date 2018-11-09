<%-- 
    Document   : fieldLogin
    Created on : 22 Oct, 2018, 6:19:18 AM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        String un=request.getParameter("unam");
                    String pass=request.getParameter("ps");
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                    PreparedStatement ps = con.prepareStatement("select id from SUREVAC.USERS where username='"+un+"' and password='"+pass+"'");
                    
                    ResultSet rs = ps.executeQuery();
                    
                    if(rs.next())
                    {
                              int iden=rs.getInt("id");
                             
                              HttpSession s=request.getSession();
                              s.setAttribute("ids", iden);
                              RequestDispatcher rp=request.getRequestDispatcher("field.jsp");
                              rp.forward(request, response);
                                                
                           con.close();
                    }
%>