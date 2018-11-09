<%-- 
    Document   : chatBot
    Created on : 17 Oct, 2018, 12:30:03 AM
    Author     : Sajid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rachel</title>
        <style>
            body{
                 background: #50514F;
                 color:#fff;
                 font-family: 'Open Sans',sans-serif;
                 margin: 0;
                 padding: 0;
                }
              h1{
                    font-size: 40px;
                    font-weight: 600;
                    border: 3px solid #fff;
                    padding: 10px 20px;
                    margin-bottom: 40px;
                }
          .flex{
                    display: flex;
                    justify-content: center;
                    flex-flow: column;
                    align-items: center;
                    height: 100vh;
                    
               }
        #result{
                    font-size: 36px;
                    color: #fff;
               }
           #ans{
                    color: #fff;
                    padding: 20px;
                    font-size: 26px;
                    background: transparent;
                    border: 0;
               }
     #ans:focus{
                    outline: 0;
                    outline-offset: 0;
               }
        </style>
    </head>
    <body>
        <form action="demo.jsp">
        
        
        <div class="flex">
            <div>
                <center><img src="Images/Rachel.jpg" alt=""/></center>
                
                <h1>Rachel chatBot</h1>
                
                
            </div>
            <div id="result">
            </div>
            <div class="input">
                <input type="text" id="ans" placeholder="Enter your response here" onkeypress="if (event.keyCode==13){ showResponse();}"required/>
            </div>
        </div>
        <script>
            
            var questions = [
                'Whats your name?',
                'What is your mobile number?',
                'Please Enter your Email',
                'Enter the Product no  of the product that you have purchased',
                'Enter your Complaint',
                'Enter a Username of your choice',
                'Enter a password that you will remember',
                'It was nice talking to you :)'
            ];
           
            var num=0;
            var output = document.querySelector("#result");
            output.innerHTML=questions[0];
            var inputBox=document.querySelector("#ans");
            
            
            function showResponse(){
                var input=inputBox.value;
               
                if(inputBox.value=="")
                {
                    
                }
                else
                {   
                    
                    if(num==0)
                    {
                        output.innerHTML='Hello '+input+' nice meeting you';
                        var v=input;  
    var url="demo.jsp?val="+v;  
      
        if(window.XMLHttpRequest)
        {  
        request=new XMLHttpRequest();  
        }  
        
         else if(window.ActiveXObject)
        {  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
        }  
      
        try
        {  
           
        request.onreadystatechange=getInfo;  
        
        request.open("GET",url,true);  
        request.send();  
        }
        catch(e)
        {
        alert("Unable to connect to server");
        }
                        inputBox.value="";
                        ++num;
                        setTimeout(changeQuestion,2000);
                    }else if(num==1)
                    {
                        output.innerHTML=input+' is your number ';
                        var v1=input;  
    var url="demo1.jsp?val2="+v1;  
      
        if(window.XMLHttpRequest)
        {  
        request=new XMLHttpRequest();  
        }  
         else if(window.ActiveXObject)
        {  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
        }  
      
        try
        {  
           
        request.onreadystatechange=getInfo;  
        
        request.open("GET",url,true);  
        request.send();  
        }
        catch(e)
        {
        alert("Unable to connect to server");
        }
                        inputBox.value="";
                        ++num;
                        setTimeout(changeQuestion,2000);
                    }else if(num==2)
                    {
                        output.innerHTML='Thanks for the input ';
                        var v2=input;  
    var url="demo2.jsp?val2="+v2;  
      
        if(window.XMLHttpRequest)
        {  
        request=new XMLHttpRequest();  
        }  
         else if(window.ActiveXObject)
        {  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
        }  
      
        try
        {  
           
        request.onreadystatechange=getInfo;  
        
        request.open("GET",url,true);  
        request.send();  
        }
        catch(e)
        {
        alert("Unable to connect to server");
        }
                       
                        inputBox.value="";
                        ++num;
                        setTimeout(changeQuestion,2000);
                    }else if(num==3)
                    {
                        output.innerHTML=input+' is your Product Number ';
                        var v3=input;  
    var url="demo3.jsp?val2="+v3;  
      
        if(window.XMLHttpRequest)
        {  
        request=new XMLHttpRequest();  
        }  
         else if(window.ActiveXObject)
        {  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
        }  
      
        try
        {  
           
        request.onreadystatechange=getInfo;  
        
        request.open("GET",url,true);  
        request.send();  
        }
        catch(e)
        {
        alert("Unable to connect to server");
        }
                        inputBox.value="";
                        ++num;
                        setTimeout(changeQuestion,2000);
                    }else if(num==4)
                    {
                        output.innerHTML=' got your complaint ';
                        var v4=input;  
    var url="demo4.jsp?val2="+v4;  
      
        if(window.XMLHttpRequest)
        {  
        request=new XMLHttpRequest();  
        }  
         else if(window.ActiveXObject)
        {  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
        }  
      
        try
        {  
           
        request.onreadystatechange=getInfo;  
        
        request.open("GET",url,true);  
        request.send();  
        }
        catch(e)
        {
        alert("Unable to connect to server");
        }
                        inputBox.value="";
                        ++num;
                        setTimeout(changeQuestion,2000);
                    }else if(num==5)
                    {
                        output.innerHTML=input+' is your Username that you have choosen ';
                        var v5=input;  
    var url="demo5.jsp?val2="+v5;  
      
        if(window.XMLHttpRequest)
        {  
        request=new XMLHttpRequest();  
        }  
         else if(window.ActiveXObject)
        {  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
        }  
      
        try
        {  
           
        request.onreadystatechange=getInfo;  
        
        request.open("GET",url,true);  
        request.send();  
        }
        catch(e)
        {
        alert("Unable to connect to server");
        }
                        inputBox.value="";
                        ++num;
                        setTimeout(changeQuestion,2000);
                    }else if(num==6)
                    {
                        output.innerHTML=input+' is the password that you have chosen ';
                        var v6=input;  
    var url="demo6.jsp?val2="+v6;  
      
        if(window.XMLHttpRequest)
        {  
        request=new XMLHttpRequest();  
        }  
         else if(window.ActiveXObject)
        {  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
        }  
      
        try
        {  
           
        request.onreadystatechange=getInfo;  
        
        request.open("GET",url,true);  
        request.send();  
        }
        catch(e)
        {
        alert("Unable to connect to server");
        }
                        inputBox.value="";
                        ++num;
                        setTimeout(changeQuestion,2000);
                        
                        

                    }
                }
            }
            
            function changeQuestion(){
                output.innerHTML=questions[num];
                if(num==7)
                {
                    inputBox.style.display="none";
                    setTimeout('Redirect()', 2000);
                     
                }
            }
            
            function Redirect() 
                                {  
                                  window.location.href = 'index.html';
                                 } 
            
    function getInfo()
    {  
    if(request.readyState==4)
    {  
    var val=request.responseText;  
    document.getElementById('display').innerHTML=val;  
    }  
    }  
             
            
        </script>
    </form>
    </body>
</html>
