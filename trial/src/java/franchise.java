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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sajid
 */
public class franchise extends HttpServlet {

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
           
           switch(choice)
           {
           
               case "d":
                   String del=request.getParameter("na");
                   deleteCOL call=new deleteCOL();
                   call.delete(del);
                   RequestDispatcher rp=request.getRequestDispatcher("successful.jsp");
                        rp.forward(request, response);
                   break;
//            
               case "u":
                   String update=request.getParameter("updt");            
                   String un=request.getParameter("unn");  
                   String pss=request.getParameter("pass"); 
                   String list=request.getParameter("lists"); 
                   updateCOL c=new updateCOL();
                   c.update(un,pss,list, update);
                   RequestDispatcher rs=request.getRequestDispatcher("successful.jsp");
                        rs.forward(request, response);
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
            Logger.getLogger(franchise.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(franchise.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(franchise.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(franchise.class.getName()).log(Level.SEVERE, null, ex);
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

                    PreparedStatement ps = con.prepareStatement("DELETE  FROM SUREVAC.FRANCHISES WHERE id="+n+" ");

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
    public void update(String un,String pss,String list,String update)
    {
        int rs=0;
        
        int i=parseInt(update);
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");

                    PreparedStatement ps = con.prepareStatement("UPDATE SUREVAC.FRANCHISES SET FRANCHISEELIST =?, USERNAME =?,PASSWORD=? WHERE ID ="+i+"");
                    ps.setString(1, list);
                    ps.setString(2, un);
                    ps.setString(3, pss);
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
