<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<html>
<head>
    <title>Homepage</title>
</head>
<body>
<h3>Training portal</h3>
<%
    String favLang = "Java";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("myApp.favLang".equals(cookie.getName())) {
                favLang = URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8);
                break;
            }
        }
    }
%>
<h4>New books for <%= favLang %></h4>
<ul>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
</ul>
<h4>Latest news for <%= favLang %></h4>
<ul>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
</ul>
<h4>Hot jobs for <%= favLang %></h4>
<ul>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
</ul>
<a href="cookies.html">Personalize this page</a>
</body>

</html>