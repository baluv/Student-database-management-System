package com.balu.curd.dao;

import java.util.List;

import com.balu.curd.domain.Student;

public interface StudentDao {
	boolean insertStudent(Student student);
	boolean updateStudent(Student student);
	public List<Student> listStudent();
	public int deleteStudent(Student student);
}
