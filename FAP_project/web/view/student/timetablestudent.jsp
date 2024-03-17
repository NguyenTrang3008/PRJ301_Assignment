<%-- 
    Document   : timetablestudent
    Created on : Mar 12, 2024, 12:53:20 AM
    Author     : Dell
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .blue-row {
                background-color: #7590DA;
                color: white; /* Optional: Set text color to white for better visibility */
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
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Thêm đổ bóng */

            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                padding: 10px; /* Increase padding for better spacing */
                text-align: left;
                border: 1px solid #ccc; /* Add border for cells */
            }
            th {
                background-color: #ccc;
                color: white;
            }
        </style>
    </head>
    <body>

        <div class="header">
            <h1 style="text-align: center">FPT University Academic Portal</h1>
        </div>


        <div style="margin-left: 30px">
            <h3 style="">Activities for student:</h3> 

            <P> NOTE: These activities do not include extra-curriculum activities, such as club activities ...</p>
            <p>
                Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br>
                Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br>
                Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br>
                Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br>
                Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br>
                Little UK (LUK) thuộc tầng 5 tòa nhà Delta<br>
            </p>
        </div>
        <table border="1px">  
            <form action="" method="GET">
                <input type="hidden" value="${param.id}" name="id"/>
                <tr class ="blue-row">
                    <td>From: <input type="date" name="from" value="${requestScope.from}"/> -
                        <input type="date" name="to" value="${requestScope.to}"/>
                        <input type="submit" value="View"/></td>
            </form>
            <c:forEach items="${requestScope.dates}" var="d">
                <td>
                <fmt:formatDate pattern="E" value="${d}" />
                ${d}</td>
            </c:forEach>
    </tr>
    <c:forEach items="${requestScope.slots}" var="slot">
        <tr>
            <td>${slot.name}</td>
            <c:forEach items="${requestScope.dates}" var="d">
                <td>
                    <c:forEach items="${requestScope.lessions}" var="les">
                        <c:if test="${les.date eq d and les.slot.id eq slot.id}">
                            ${les.group.name} - ${les.group.subject.name} <br>
                            at ${les.room.name} <br>
                            <a href="att?id=${les.id}">Take</a>
                        </c:if>
                    </c:forEach> 
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>

<div class="footer">
    <p style="text-align: center">Mọi góp ý, thắc mắc xin liên hệ: Phòng dịch vụ giáo viên: Email: <b>dichvugiaovien@fe.edu.vn</b>. Điện thoại: (024)7308.13.13</p>
</div>
</body>
</html>
