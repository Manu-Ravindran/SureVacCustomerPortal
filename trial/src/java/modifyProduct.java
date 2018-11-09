/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sajid
 */
public class modifyProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String choice=request.getParameter("ch");
           Class.forName("org.apache.derby.jdbc.ClientDriver");

           Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
           PreparedStatement us = conn.prepareStatement("select * from SUREVAC.PRODUCT");
           ResultSet ns = us.executeQuery();
           switch(choice)
           {
           
               case "d":
                   String del=request.getParameter("na");
                   deleteCOL call=new deleteCOL();
                   call.delete(del);
                   out.println("<center><h1>MODIFICATION RESULT AFTER DELETION</h1></center>");
                    while(ns.next())
                 { 
                     out.println("<br><br>");
                     out.println("<h3>ID: "+ns.getInt("id")+"|| PRODUCT:"+ns.getString("PNAME")+"</h3>");
                     out.println("<br><br>");
                 }
                   break;
             
               case "u":
                   String update=request.getParameter("updt");            
                   String nm=request.getParameter("Pname"); 
                   String num=request.getParameter("Pnum");  
                   updateCOL c=new updateCOL();
                   c.update(nm,num, update);
                   out.println("<center><h1>MODIFICATION RESULT AFTER UPDATING</h1></center>");
                    while(ns.next())
                 { 
                     out.println("<br><br>");
                     out.println("<h3>ID: "+ns.getInt("id")+"|| PRODUCT:"+ns.getString("PNAME")+"</h3>");
                     out.println("<br><br>");
                     
                 }
                   break;
               default:out.println("INVALID OPTION");
                        break;
                
           }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(modifyProduct.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(modifyProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(modifyProduct.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(modifyProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    
public class deleteCOL
{
public void delete(String del)
{
    int rs=0;
             
                    int n=parseInt(del);
            try
            {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");

                    PreparedStatement ps = con.prepareStatement("DELETE  FROM SUREVAC.PRODUCT WHERE id="+n+" ");

                    rs = ps.executeUpdate();
                  
                    if(rs>0)
                    {
                        System.out.println("MODIFICATION SUCCESFULL");
                    }
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
}
}



public class updateCOL
{
    public void update(String nm,String num,String update)
    {
        int rs=0;
        
        int i=parseInt(update);
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");

                    PreparedStatement ps = con.prepareStatement("UPDATE SUREVAC.PRODUCT SET PNAME =?,PNUM= ? WHERE ID ="+i+"");
                    ps.setString(1, nm);
                    ps.setString(2, num);
                    rs = ps.executeUpdate();
                    
                    if(rs>0)
                    {
                        System.out.println("MODIFICATION SUCCESFULL");
                    }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
}
    
    
    
    
}
