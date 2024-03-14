<%-- 
    Document   : login
    Created on : Mar 10, 2024, 4:44:34 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            form {
                text-align: center;
                border: 5px solid #DF931D;
                padding: 50px;
                border-radius: 10px;
                background-color: #ccc;
            }
            form div {
            margin-bottom: 10px;
        }
        form label {
            display: inline-block;
            width: 100px;
            font-weight: bold;
        }
        form input[type="text"],
        form input[type="password"],
        form select {
            width: 200px;
            padding: 5px;
            border-radius: 3px;
            border: 1px solid #ccc;
        }
        form input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        form input[type="submit"]:hover {
            background-color: #45a049;
        }
        </style>
        

    </head>
    <body>
        <form action="" method="POST">
            <h1>FPT University Academic Portal</h1> 
            <div> Select campus
                <select name="Select campus">
                    <option value="FU-Hoa Lac">FU-HoaLac</option>
                </select>
            </div>
            <div>
            <label for="username">Username:</label>
            <input type="text" name="username" id="username">
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password">
        </div>

        <div>
            <label></label>
            <input type="checkbox" name="remember" id="remember" value="remember">
            <label for="remember">Remember me</label>
        </div>
        <div>
            <input type="submit" value="Lecturer" onclick="Redirect();">
            <input type="submit" value="Student" onclick="Redirect();">
        </div>
        </form>
    </body>
</html>
