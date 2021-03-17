<%-- 
    Document   : newjsp
    Created on : Mar 3, 2021, 8:59:23 AM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1> Form Data: User Details</h1>
        <p><b>First Name:</b>
                <%= request.getParameter("fname")%>
        </p>
        <p><b>Last  Name:</b>
                <%= request.getParameter("lname")%>
        </p>
        <p><b>D.O.B</b>
            <%= request.getParameter("dob")%>  
        </p>
                    
        <p><b>Email:</b>
            <%=request.getParameter("email")%>
        </p>
        
        
    </body>

</html>
