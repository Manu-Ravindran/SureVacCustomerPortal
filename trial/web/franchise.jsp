<%-- 
    Document   : franchise
    Created on : 20 Oct, 2018, 1:58:11 AM
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
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
</head>
<body>

<form action="franchiseList">
  <div class="container">
    <h1>Register a Franchise</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="email"><b>Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="fname" required>

    <label for="psw"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="fuser" required>

    <label for="psw-repeat"><b> Password</b></label>
    <input type="password" placeholder="Enter Password" name="fpass" required>
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
     <input type="hidden" name="ch" value="a">
    <button type="submit" class="registerbtn">Register</button>
  </div>
</form>
    
    
    <div class="container">
    <form action="franchise" method="post">
    <div class="row">
        <center><h2>Delete Franchise</h2></center>
      <div class="col-25">
        <label for="Pname">Franchise Name</label>
      </div>
      <div class="col-75">
       <select name="na">
               <option value="select">SELECT</option>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement ps = con.prepareStatement("select * from SUREVAC.FRANCHISES");

                    

                 ResultSet rs = ps.executeQuery();   
                while(rs.next())
                 {
                     out.println("<option value='"+rs.getInt("id")+"'>"+rs.getString("FRANCHISEELIST")+"</option>");
                     
                  
                     
                 }
                
            %>
            
               </select>
      </div>
    </div>
    
    <div class="row">
        <hr>
      <input type="hidden" name="ch" value="d">
            <input type="submit" value="DELETE">
    </div>
  </form>
</div>
<div class="container">
    <form action="franchise" method="post">
    <div class="row">
        <center><h2>Update Franchise</h2></center>
      <div class="col-25">
        <label for="Pname">Franchise Name</label>
      </div>
      <div class="col-75">
        <select name="updt">
               <option value="select">SELECT</option>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");

                    Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/SureVac","SureVac","SureVac");
                        
                    PreparedStatement pss = conn.prepareStatement("select * from SUREVAC.FRANCHISES");

                    

                 ResultSet rss = pss.executeQuery();   
                while(rss.next())
                 {
                     out.println("<option value='"+rss.getInt("id")+"'>"+rss.getString("FRANCHISEELIST")+"</option>");
                     
                  
                     
                 }
                
            %>
            
               </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Pnum">Franchise Name</label>
      </div>
      <div class="col-75">
        <input type="text" name="lists"  placeholder="Your Product Number..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Pnum">Franchise UserName</label>
      </div>
      <div class="col-75">
        <input type="text" name="unn"  placeholder="Enter Username..">
      </div>
    </div>
            <div class="row">
      <div class="col-25">
        <label for="Pnum">Franchise Password</label>
      </div>
      <div class="col-75">
        <input type="text" name="pass"  placeholder="Enter Password..">
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

