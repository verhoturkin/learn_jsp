<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Functions</title>
</head>
<body>
<c:set var="data" value="luv2code"/>

Length of the string <b>${data}</b> is ${fn:length(data)}

<br/><br/>

Uppercase of the string <b>${data}</b> is <b>${fn:toUpperCase(data)}</b>

<br/><br/>

Does the string <b>${data}</b> starts with <b>luv</b>?: ${fn:startsWith(data, "luv")}

</body>
</html>
