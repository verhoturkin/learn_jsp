package com.example.servlets.repository;

import com.example.jsp.tagdemo.Student;

import java.util.List;

public class StudentDataUtil {
    public static List<Student> getStudents() {
        return List.of(new Student("John", "Doe", "johndoe@ya.ru"),
                new Student("Mary", "Public", "marypublic@ya.ru"),
                new Student("Ajay", "Rau", "superajay@gmail.com"));
    }
}
