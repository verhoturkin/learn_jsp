<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Students</title>
</head>
<body>
<ul>
    <c:forEach var="student" items="${students}">
    <li>${student}</li>
    </c:forEach>

</ul>

</body>
</html>
