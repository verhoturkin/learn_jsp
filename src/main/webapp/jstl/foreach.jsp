<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String[] cities = {"Mumbai", "Moscow", "Singapore"};
    pageContext.setAttribute("myCities", cities);
%>
<html>
<head>
    <title>Foreach</title>
</head>
<body>
<c:forEach var="city" items="${myCities}">
    ${city} <br/>
</c:forEach>
</body>
</html>
