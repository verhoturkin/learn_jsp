<html>
<head>
    <title>Student Confirmation Title</title>
</head>
<body>

Student is confirmed: ${param.firstname} ${param.lastname}
<br/><br/>
Student's country: ${param.country}
<br/><br/>
Student's favorite programming language:
<ul>
    <%
        String[] langs = request.getParameterValues("lang");

        if (langs != null) {
            for (String lang : langs) {
                out.println("<li>" + lang + "</li>");
            }
        }
    %>
</ul>
</body>
</html>