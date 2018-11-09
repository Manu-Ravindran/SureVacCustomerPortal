<%-- 
    Document   : confirmation
    Created on : 22 Oct, 2018, 7:50:59 AM
    Author     : Sajid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <form action="email" method="post" >
        <h1>SEND CONFIRMATION</h1>
        
        
        Enter to email :<input type="email" name="e"><br><br>
        Enter subject :<input type="text" name="s"><br><br>
        Enter body :<input type="text" name="b"></textarea><br><br>
        
        <input type="submit" value="send">
        </form>
    </body>
</html>

