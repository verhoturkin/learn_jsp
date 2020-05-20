<%@ page import="java.util.*" %>
<html>
<head>
    <title>TO DO</title>
</head>
<body>
<form action="todo-demo.jsp">
    Add new item: <input type="text" name="item"/>
    <input type="submit" value="Submit"/>
</form>
<br/>
<%
    List<String> items = (List<String>) session.getAttribute("myTodoList");

    if(items == null) {
        items = new ArrayList<>();
        session.setAttribute("myTodoList", items);
    }

    String item2 = request.getParameter("item");
    if(item2 != null && !item2.isBlank() && !items.contains(item2.trim())) {
        items.add(item2);
        response.sendRedirect("todo-demo.jsp");
    }
%>
<hr>
Items:
<ol>
    <%
        for (String i : items) {
            out.println("<li>" + i + "</li>");
        }
    %>
</ol>
</body>
</html>
