<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<html>
<head>
    <title>Confirmation</title>
</head>

<%
    String favLang = request.getParameter("lang");
    favLang = URLEncoder.encode(favLang, StandardCharsets.UTF_8);
    Cookie cookie = new Cookie("myApp.favLang", favLang);
    cookie.setMaxAge(60*60*24*365);
    response.addCookie(cookie);
%>
<body>
Thanks! We set your favorite language to: ${param.lang}
<br/><br/>
<a href="cookies-homepage.jsp">Return to homepage</a>
</body>
</html>