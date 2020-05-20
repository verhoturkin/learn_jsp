<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Split-join</title>
</head>
<body>
<c:set var="data" value="Singapore,Tokyo,Mumbai,London"/>

<h3>Split demo</h3>

<c:set var="array" value="${fn:split(data,',')}"/>
<c:forEach var="city" items="${array}">
    ${city} <br/>
</c:forEach>

<h3>Join demo</h3>
<c:set var="str" value="${fn:join(array, ',')}"/>

Result of joining: ${str}

</body>
</html>
