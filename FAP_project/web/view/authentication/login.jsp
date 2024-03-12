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
                border: 10px solid #FFFFFF;
                padding: 50px;
                border-radius: 5px;
            }
        </style>
        
        
    </head>
    <body>
        <form action="" method="POST">
            <h1>FPT University Academic Portal</h1> 
            <div> Select campus
                <select name="Select campus">
                    <option value="FU-Hoa Lac">FU-HoaLac</option>
                    <option value="FU-Ho Chi Minh">FU-HoChiMinh</option>
                </select>
            </div>
            Username: <input type="text" name="username"/><br/>
            Password: <input type="password" name="password"/> <br/>
            <div> Access
                <select name="Access">
                    <option value="Lecturer">Lecturer</option>
                    <option value="Student">Student</option>
                </select>
            </div>

            <input type="checkbox" name="remember" value="remember"/> Remember me. <br/>
            <input type="submit" value="Login"  />
        </form>
    </body>
</html>
