<%-- 
    Document   : custLogin
    Created on : 23 Oct, 2018, 11:19:01 PM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
                    String un=request.getParameter("Cname");
                    String pass=request.getParameter("Cpass");
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                    PreparedStatement ps = con.prepareStatement("select id from SUREVAC.CUSTOMER where username='"+un+"' and password='"+pass+"'");
                    
                    ResultSet rs = ps.executeQuery();
                    
                    if(rs.next())
                    {
                              int iden1=rs.getInt("id");
                             
                              HttpSession s=request.getSession();
                              s.setAttribute("custID", iden1);
                              RequestDispatcher rp=request.getRequestDispatcher("customer.jsp");
                              rp.forward(request, response);
                                                
                           con.close();
                    }
                    else
                    {
                              RequestDispatcher rp=request.getRequestDispatcher("errorpage.jsp");
                              rp.forward(request, response);
                    }
%>