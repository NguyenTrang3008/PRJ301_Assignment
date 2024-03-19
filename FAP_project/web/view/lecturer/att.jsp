<%-- 
    Document   : att
    Created on : Mar 13, 2024, 1:50:54 AM
    Author     : Dell
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance of lecturer</title>
        <style>
            table {
                border-collapse: collapse; /* Remove default spacing between table cells */
                width: 100%; /* Set table width to 100% of its container */

            }
            .table_header {
                background-color: #7590DA; /* Background color orange */
                color: white; /* Text color white */
                border: 1px solid black; /* Solid black border around cells */
                padding: 8px; /* Add padding to th elements */
                text-align: center; /* Center align text */
            }
            .header {
                border: 1px solid #ccc; /* Đặt đường viền cho khung */
                padding: 10px; /* Thêm padding để tạo khoảng cách giữa khung và nội dung */
                margin-bottom: 20px; /* Thêm margin để tạo khoảng cách giữa các khung */
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Thêm đổ bóng */
                background-color: #DF931D;
            }
            .footer {
                border: 1px solid #ccc; /* Đặt đường viền cho khung */
                padding: 10px; /* Thêm padding để tạo khoảng cách giữa khung và nội dung */
                margin-bottom: 20px; /* Thêm margin để tạo khoảng cách giữa các khung */
                margin-top: 50px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Thêm đổ bóng */

                .title {
                    flex-grow: 1; /* Tiêu đề sẽ mở rộng để chiếm hết không gian còn lại */
                    text-align: center; /* Căn giữa theo chiều ngang */
                }
            }
        </style>
    </head>
    <body>
        <div class="header">
            <h1 style="text-align: center">FPT University Academic Portal</h1>
        </div>



        <h3 class="title">Lecturer's attendance</h3>

        <form action="att" method="POST">
            <input type="hidden" name="id" value="${param.id}" />
            <table border="1px">
                <tr class="table_header">
                    <td>Id</td>
                    <td>Name</td>
                    <td>Presented</td>
                    <td>Note</td>
                    <td>Time</td>
                </tr>
                <c:forEach items="${requestScope.atts}" var="a">
                    <tr>
                        <td>${a.student.id}</td>

                        <td>${a.student.name}</td>
                        <td>
                            <input type="radio" 
                                   ${!a.present?"checked=\"checked\"":""}
                                   name="present${a.student.id}" value="no"/> <p style="color:red">Absent</p>
                            <input type="radio" 
                                   ${a.present?"checked=\"checked\"":""}
                                   name="present${a.student.id}" value="yes"style="color: green"/>
                            <p style="color:green">Present</p>
                        </td>
                        <td>
                            <input type="text" name="description${a.student.id}" value="${a.description}"/>
                        </td>
                        <td>${a.time}</td>
                    </tr>    
                </c:forEach>
            </table>
            <input style="width: 100%; color: white; background-color: darkgreen; padding: 10px; font-size: 20px" type="submit" value="Save"/> 
        </form>
        <div class="footer">
            <p style="text-align: center">Mọi góp ý, thắc mắc xin liên hệ: Phòng dịch vụ giáo viên: Email: <b>dichvugiaovien@fe.edu.vn</b>. Điện thoại: (024)7308.13.13</p>
        </div>
    </body>
</html>
