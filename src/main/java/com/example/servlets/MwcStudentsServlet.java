package com.example.servlets;

import com.example.jsp.tagdemo.Student;
import com.example.servlets.repository.StudentDataUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/MwcStudentsServlet")
public class MwcStudentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get data
        List<Student> studentList = StudentDataUtil.getStudents();
        //add data to request
        request.setAttribute("students", studentList);
        //get dispatcher
        RequestDispatcher dispatcher = request.getRequestDispatcher("view-students.jsp");
        //forward
        dispatcher.forward(request,response);

    }
}
