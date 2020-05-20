<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:bundle basename="mylabels"/>
<c:set var="locale"
       value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${locale}"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="i18n.jsp?theLocale=en_US">English(US)</a>|
<a href="i18n.jsp?theLocale=es_ES">Spanish(ES)</a>|
<a href="i18n.jsp?theLocale=de_DE">German(DE)</a>|
<a href="i18n.jsp?theLocale=ru_RU">Rusian(RU)</a>
<hr>
<fmt:message key="label.greeting" /> <br/><br/>
<fmt:message key="label.firstname" /> <i>John</i> <br/>
<fmt:message key="label.lastname" /> <i>Doe</i> <br/> <br/>
<fmt:message key="label.welcome" /> <br/>
<hr>
Selected locale: ${locale}
</body>
</html>
