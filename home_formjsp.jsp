<%-- 
    Document   : home_formjsp
    Created on : Mar 10, 2021, 9:18:41 AM
    Author     : student
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>@import url('https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital@1&display=swap');
            h1{
                text-transform: uppercase;
                font-family: 'Roboto Condensed', sans-serif;
            }
            p{
                font-family:sans-serif;
                color: red;

            }
            #review{
                display: flex;
                flex-direction: column;
                align-items: center; 
                
                border-style: dotted;
                border-color: black;
                
                padding: 10px;
                height: 60%;
                width: 60%;
                
            }
            #review p{
                
                font-family: 'Roboto Condensed', sans-serif;
                text-spacing: .5px;
                
                
            }
            #container{
                display: flex;
                flex-direction: column;
                align-items: center;
                
                background-color: lightcyan;
                border-style: double;

            }
        </style>
    </head>
    <body>

        <div id="container">

            <% String email = request.getParameter("feedback_email");
                String review = request.getParameter("feedback_content");
            %>

            <h1>
                Customer Review
            </h1>

            <div id="review">
                <p> EMAIL:
                    <% out.println(email);
                    %>
                </p>
                <p>
                    REVIEWS:
                    <% out.println(review);
                    %>
                </p>
            </div>        

            <p>
                <% try {
                        File default_file = new File("C:\\Users\\student\\Documents\\NetBeansProjects\\MINI_P_333\\web\\text\\review-content.txt");
                        FileWriter review_file = new FileWriter(default_file, true);
                        String to_append_content;
                        to_append_content = ("Email: " + email + " || " + "Review: " + review + " /n");
                        review_file.write(to_append_content);
                        out.println("Added to Feedback Section");
                        review_file.close();
                    } catch (FileNotFoundException e) {
                        out.println("Failed to write to file");
                    }
                %>
            </p>

        </div>




    </body>
</html>
