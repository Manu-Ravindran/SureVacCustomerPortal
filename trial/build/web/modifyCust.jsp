<%-- 
    Document   : modifyCust
    Created on : 23 Oct, 2018, 11:06:25 PM
    Author     : Sajid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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

input[type=password], select, textarea {
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
    <form action="modifyCustomer" method="post">
    <div class="row">
        <center><h2>Update CUSTOMER Account</h2></center>
      <div class="col-25">
        <label for="Pname"> Name</label>
      </div>
      <div class="col-75">
        <select name="updt">
               <option value="select">SELECT</option>
        <%
            int del1=(Integer)session.getAttribute("custID");
            
            try
            {
                
            
                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps = con.prepareStatement("select * from SUREVAC.CUSTOMER  WHERE id="+del1+"");

                    

                 ResultSet rs = ps.executeQuery();   
                while(rs.next())
                 {
                     out.println("<option value='"+rs.getInt("id")+"'>"+rs.getString("cname")+"</option>");
                     
                  
                     
                 }
                
            }
            catch(Exception e){}
            
            %>
            
               </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Pnum">Mobile</label>
      </div>
      <div class="col-75">
        <input type="text" name="Aname"  placeholder="Enter Mobile No.">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Pnum">Username</label>
      </div>
      <div class="col-75">
        <input type="text" name="Auser"  placeholder="Enter Username">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Pnum">Password</label>
      </div>
      <div class="col-75">
        <input type="password" name="Apass"  placeholder="Enter Password..">
      </div>
    </div>
    <div class="row">
          <hr>
        <input type="hidden" name="ch" value="u">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>
       
    </body>
</html>
