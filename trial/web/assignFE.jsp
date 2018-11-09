<%-- 
    Document   : assignFE
    Created on : 22 Oct, 2018, 3:31:45 AM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
</head>
<body>

<div class="container">
  <form action="assignFeild">
      <center><h1>ASSIGN FIELD ENGINEER</h1></center>
    <div class="row">
      <div class="col-25">
        <label for="fname">Customer Name</label>
      </div>
      <div class="col-75">
        
          <select name="na">
               <option value="select">SELECT</option>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps = con.prepareStatement("select * from SUREVAC.CUSTOMER ");

                    

                 ResultSet rs = ps.executeQuery();   
                while(rs.next())
                 {
                     out.println("<option value='"+rs.getInt("id")+"'>"+rs.getString("cname")+"</option>");
                     
                  
                     
                 }
                
            %>
            
               </select>
          
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">F.E Name</label>
      </div>
      <div class="col-75">
          <select name="up">
               <option value="select">SELECT</option>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement pss = conn.prepareStatement("select * from SUREVAC.USERS where CLEARANCE='field'");

                    

                 ResultSet rss = pss.executeQuery();   
                while(rss.next())
                 {
                     out.println("<option value='"+rss.getInt("id")+"'>"+rss.getString("uname")+"</option>");
                     
                  
                     
                 }
                
            %>
            
               </select>
      </div>
    </div>

    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>

            
            
            
            <div class="container">
  <form action="updateAssign">
      <center><h1>UPDATE ASSIGN FIELD ENGINEER</h1></center>
    <div class="row">
      <div class="col-25">
        <label for="fname">Customer Name</label>
      </div>
      <div class="col-75">
        
          <select name="na1">
               <option value="select">SELECT</option>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con1 = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps1 = con1.prepareStatement("select * from SUREVAC.CUSTOMER ");

                    

                 ResultSet rs1 = ps1.executeQuery();   
                while(rs1.next())
                 {
                     out.println("<option value='"+rs1.getInt("id")+"'>"+rs1.getString("cname")+"</option>");
                     
                  
                     
                 }
                
            %>
            
               </select>
          
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">F.E Name</label>
      </div>
      <div class="col-75">
          <select name="up1">
               <option value="select">SELECT</option>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection conn1 = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement pss1 = conn1.prepareStatement("select * from SUREVAC.USERS where CLEARANCE='field'");

                    

                 ResultSet rss1 = pss1.executeQuery();   
                while(rss1.next())
                 {
                     out.println("<option value='"+rss1.getInt("id")+"'>"+rss1.getString("uname")+"</option>");
                     
                  
                     
                 }
                
            %>
            
               </select>
      </div>
    </div>

    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>
            
<div class="container">
  <form action="deleteAssign">
      <center><h1>Delete FIXED RECORDS</h1></center>
    <div class="row">
      <div class="col-25">
        <label for="fname">Customer Name</label>
      </div>
      <div class="col-75">
        
          <select name="na2">
               <option value="select">SELECT</option>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con2 = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps2 = con2.prepareStatement("select * from SUREVAC.CUSTOMER ");

                    

                 ResultSet rs2 = ps2.executeQuery();   
                while(rs2.next())
                 {
                     out.println("<option value='"+rs2.getInt("id")+"'>"+rs2.getString("cname")+"</option>");
                     
                  
                     
                 }
                
            %>
            
               </select>
          
      </div>
    </div>
    

    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>
            
            
            
            
            
</body>
</html>
