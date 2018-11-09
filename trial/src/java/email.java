/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sajid
 */
public class email extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
        String bd=request.getParameter("b");
        String rec=request.getParameter("e");
        String sb=request.getParameter("s");
        final String user="surevacsystems.custcare@gmail.com"; 
        final String pass="surevacpro";  
        String to=rec;
        String subject=sb;
        String msg=bd;
   
        Properties p = new Properties();  

        p.put("mail.smtp.host", "smtp.gmail.com"); 
        p.put("mail.smtp.port", "587");
        p.put("mail.smtp.auth", "true");  
        p.put("mail.smtp.starttls.enable", "true");
  
        Session session = Session.getDefaultInstance(p,new javax.mail.Authenticator() 
        {  
             protected PasswordAuthentication getPasswordAuthentication() 
             {  
                  return new PasswordAuthentication(user,pass);  
             }  
        });  
 
        try 
        {  
            MimeMessage m = new MimeMessage(session);  
            m.setFrom(new InternetAddress(user));  
            m.setRecipient(Message.RecipientType.TO,new InternetAddress(to));  
            m.setSubject(subject);  
            m.setText(msg);  
   
  
            Transport.send(m);  
  
            out.println("Done Manu Done");  
  
        } 
        catch (MessagingException e) 
        {  
             throw new RuntimeException(e);  
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
        processRequest(request, response);
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
        processRequest(request, response);
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

}
