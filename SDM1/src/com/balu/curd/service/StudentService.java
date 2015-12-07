package com.balu.curd.service;

import java.util.List;

import com.balu.curd.domain.Student;

public interface StudentService {
boolean insertStudent(Student student);
public List<Student> listStudent();
boolean updateStudent(Student student );
public int deleteStudent(Student  student);


}
