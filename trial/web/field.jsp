<%-- 
    Document   : field
    Created on : 22 Oct, 2018, 4:37:01 AM
    Author     : Sajid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<body>

<div class="sidebar">
  <a class="active" href="#home">Home</a>
  <a href="viewProduct.jsp" target="mn1">View Product</a>
  <a href="addField.jsp" target="mn1">MANAGE Field Engineer</a>
  <a href="fix.jsp" target="mn1">FIX IT</a>
  <a href="reqInfo.jsp" target="mn1">REQUEST INFO</a>
  <a href="confirmation.jsp" target="mn1">SEND CONFIRMATION</a>
  <a href="report.jsp" target="mn1">CASE STATUS</a>
  <a href="index.html">SIGN-OUT</a>
</div>

<div class="content">
    <iframe name="mn1" width="100%" height="100%">
        
    </iframe>
</div>


</body>
</html>
