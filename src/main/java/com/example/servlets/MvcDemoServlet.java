package com.example.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/MvcDemoServlet")
public class MvcDemoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //add data
        String[] data = {"John", "Susan", "Karen", "Jack"};
        request.setAttribute("students", data);

        //get req dispatcher
        RequestDispatcher dispatcher = request.getRequestDispatcher("view-students.jsp");

        //forward the request to JSP
        dispatcher.forward(request, response);
    }
}
