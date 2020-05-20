<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.example.jsp.tagdemo.Student, java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%
    List<Student> data = new ArrayList<>();
    data.add(new Student("John", "Doe", false));
    data.add(new Student("Max", "Johnson", false));
    data.add(new Student("Mary", "Public", true));

    pageContext.setAttribute("students", data);
%>
<html>
<head>
    <title>Students</title>
</head>
<body>
<table border="1">
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Gold customer</th>
    </tr>

    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>
                <c:if test="${student.goldCustomer}">
                    Discount price
                </c:if>

                <c:if test="${not student.goldCustomer}">
                    Original price
                </c:if>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
