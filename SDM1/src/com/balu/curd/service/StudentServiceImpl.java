package com.balu.curd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balu.curd.dao.StudentDao;
import com.balu.curd.domain.Student;
@Service("studentService")
public class StudentServiceImpl implements StudentService {
	@Autowired(required=true)
	private StudentDao studentDao;
	public StudentServiceImpl() {

	}

	@Override
	public boolean insertStudent(Student student) {

		return studentDao.insertStudent(student);
	}

	@Override
	public List<Student> listStudent() {

		return studentDao.listStudent();
	}

	@Override
	public boolean updateStudent(Student student) {

		return studentDao.updateStudent(student);
	}

	@Override
	public int deleteStudent(Student student) {

		return studentDao.deleteStudent(student);
	}


}
