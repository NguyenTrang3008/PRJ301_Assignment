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
                background-color: #ccc;
                color: white;
            }
            .academic-info {
                border: 1px solid #ccc; /* Đặt đường viền cho khung */
                padding: 5px; /* Thêm padding để tạo khoảng cách giữa khung và nội dung */
                box-shadow: 0 2px 4px 0 rgba(0,0,0,0.2); /* Thêm đổ bóng */
                background-color: #DF931D; /* Đặt màu nền */
                width: 25%; /* Đặt chiều rộng là 1/3 của độ dài hiện tại */
                border-radius: 10px;
            }
        </style>
    </head>
    <body>
        <form action="" method="POST">
            <div class="header">
                <h1 style="text-align: center">FPT University Academic Portal</h1>
            </div> 
            <div class="academic-info">
                <p>Academic Information</p>
            </div>
            <table border="1">
                <tr>
                    <th>Information Access </th>
                    <th></th>
                </tr>
                <tr>
                    <td>Weekly Timetable (Thời khóa biểu từng tuần)</td>
                    <td><input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td>Attendance for Student (Điểm danh)</td>
                    <td><input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td>University timetable (Lịch học)</td>
                    <td><input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td>View exam schedule (Xem lịch thi)</td>
                    <td><input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td>Attendance report (Báo cáo điểm danh)</td>
                    <td><input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td>Mark report(Báo cáo điểm)</td>
                    <td><input type="button" value="View"/></td>
                </tr>
                <tr>
                    <td>Academic Transcript(Khung diểm)</td>
                    <td><input type="button" value="View"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
