package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class report_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<style>\n");
      out.write("table {\n");
      out.write("    border-collapse: collapse;\n");
      out.write("    border-spacing: 0;\n");
      out.write("    width: 100%;\n");
      out.write("    border: 1px solid #ddd;\n");
      out.write("}\n");
      out.write("\n");
      out.write("th, td {\n");
      out.write("    text-align: left;\n");
      out.write("    padding: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("tr:nth-child(even){background-color: #f2f2f2}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div style=\"overflow-x:auto;\">\n");
      out.write("  <table>\n");
      out.write("      <tr>\n");
      out.write("         <th>CUSTOMER NAME</th>\n");
      out.write("         <th>ASSIGNED F.E</th>\n");
      out.write("         <th>CASE STATUS</th>\n");
      out.write("      </tr>\n");
      out.write("    \n");


            

                    
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

            
            
      out.write(" \n");
      out.write("  </table>\n");
      out.write("</div>\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
