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
        </style>
    </head>
    <body>
        <form action="" method="GET">
            <input type="hidden" value="${param.id}" name="id"/>
            
            
        </form>
        <table border="1px">
            <tr class ="blue-row">
                <td>From: <input type="date" name="from" value="${requestScope.from}"/> -
            <input type="date" name="to" value="${requestScope.to}"/><input type="submit" value="View"/></td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td>
                        (<fmt:formatDate pattern="E" value="${d}" />)
                        ${d}
            </td>
        </c:forEach>
    </tr>
    <c:forEach items="${requestScope.slots}" var="slot">
        <tr>
            <td>${slot.name}</td>
            <c:forEach items="${requestScope.dates}" var="d">
                <td>
                    <c:forEach items="${requestScope.lessions}" var="les">
                        <c:if test="${les.date eq d and les.slot.id eq slot.id}">
                            ${les.group.subject.name}
                            <a href="att?id=${les.id}">Take</a>
                        </c:if>
                    </c:forEach>
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
