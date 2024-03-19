<%-- 
    Document   : list
    Created on : Mar 15, 2024, 2:37:09 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .header {
                border: 1px solid #ccc; /* Đặt đường viền cho khung */
                padding: 10px; /* Thêm padding để tạo khoảng cách giữa khung và nội dung */
                margin-bottom: 20px; /* Thêm margin để tạo khoảng cách giữa các khung */
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Thêm đổ bóng */
                background-color: #ffff;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #7590DA;
                color: white;
            }

            .footer {
                border: 1px solid #ccc; /* Đặt đường viền cho khung */
                padding: 10px; /* Thêm padding để tạo khoảng cách giữa khung và nội dung */
                margin-bottom: 20px; /* Thêm margin để tạo khoảng cách giữa các khung */
                margin-top: 50px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Thêm đổ bóng */


            }
        </style>
    </head>
    <body>
        <form action="" method="POST">
            <div class="header">
                <h1 style="text-align: center">FPT University Academic Portal</h1>
            </div> 

            <table border="1">
                <tr>
                    <th><h3 style="text-align: center">Student</h3></th>
                    <th><h3 style="text-align: center">Lecture</h3></th>
                </tr>
                <tr>
                    <td style="color: darkorange;">Weekly Timetable <input type="submit" name="action" value="timetablestudent" /></td>
                    <td style="color: darkorange;">Weekly Timetable <input type="submit" name="action" value="timetable" /></td>
                </tr>
                <tr>
                    <td style="color: darkorange;">Attendance<input type="button" name= "Attendance" value="View"/></td>
                    <td style="color: darkorange;" >Attendance<input type="button" name= "Attendance" value="View"/></td>
                </tr>
                <tr>
                    <td style="color: darkorange;">University timetable <input type="button"  value="View"/></td>
                    <td style="color: darkorange;">University timetable <input type="button"  value="View"/></td>
                </tr>
                <tr>
                    <td style="color: darkorange;" >View exam schedule <input type="button" value="View"/></td>
                    <td style="color: darkorange;">View exam schedule<input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td style="color: darkorange;">Attendance report <input type="button" value="View"/></td>
                    <td style="color: darkorange;">Attendance report<input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td style="color: darkorange;">Mark report <input type="button" value="View"/></td>
                    <td style="color: darkorange;">Mark report<input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td style="color: darkorange;">Academic Transcript<input type="button" value="View"/></td>
                    <td style="color: darkorange;">Academic Transcript<input type="button" value="View"/></td>
                </tr>

            </table>
        </form>
        <div class="footer">
            <p style="text-align: center">Mọi góp ý, thắc mắc xin liên hệ: Phòng dịch vụ giáo viên: Email: <b>dichvugiaovien@fe.edu.vn</b>. Điện thoại: (024)7308.13.13</p>
        </div>
    </body>
</html>
