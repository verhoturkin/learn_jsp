package com.example.servlets;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        ServletContext context = getServletContext();

        String cartSize = context.getInitParameter("max-shopping-cart-size");
        String team = context.getInitParameter("project-team-name");

        out.println("<html><body>");
        out.println("Max shopping cart size: " + cartSize + "<br/><br/>");
        out.println("Team name: " + team);
        out.println("</body><html>");
    }
}
