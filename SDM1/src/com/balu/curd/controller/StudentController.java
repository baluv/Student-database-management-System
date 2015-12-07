package com.balu.curd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.balu.curd.domain.Student;
import com.balu.curd.service.StudentService;

@Controller
public class StudentController {

	public StudentController() {

	}
	@Autowired(required=true)
	private StudentService studentService;

	@RequestMapping(value="/insert_student_page")
	public ModelAndView insertStudentPage(){
		return new ModelAndView("insert_student");
	}
	@RequestMapping(value="/insert_student")
	public ModelAndView insertStudent(@ModelAttribute("student") Student student ,BindingResult errors){
		boolean flag=false;
		flag=studentService.insertStudent(student);
		if(flag){
			return new ModelAndView("insert_student","message","student data inserted successfully");
		}
		try{
			System.out.println("errors");
		}
		catch(Exception e)

		{
			return new ModelAndView("insert_student","message","Sorry,student data not inserted successfully,try again");
		}
		return new ModelAndView("insert_student","message","Sorry,student data not inserted successfully,try again");
	}
	/*@RequestMapping(value="/update_student_page")
	public ModelAndView updateSudentPage()
	{
		return new ModelAndView("update_student");

	}*/
	
	@RequestMapping(value="/update_student_page")
	public ModelAndView updateStudentPage(@ModelAttribute("student") Student student){
		return new ModelAndView("update_student", "studObject", student);
	}
	
	@RequestMapping(value="/update_student")
	public ModelAndView updateStudent(@ModelAttribute("student") Student student, BindingResult errors)
	{
		boolean flag=false;
		System.out.println("executing update");
		flag=studentService.updateStudent(student);
		try{
			if(flag)
			{
				return new ModelAndView("update_student","message","student records updated successfully");
			}}catch(Exception e){
				System.out.println(errors);

			}
				return new ModelAndView("update_student","message","Sorry,student records not updated successfully,Try Again");
			
	}

	@RequestMapping("/list_student_page")
	public ModelAndView listStudentPage(){
		List<Student>listStudents=null;
		listStudents=studentService.listStudent();
		return new ModelAndView("list_student","listObject",listStudents);

	}
	@RequestMapping(value="/delete_student_page")
	public ModelAndView deleteStudentPage()
	{
		return new ModelAndView("delete_student");

	}
	@RequestMapping(value="/delete_student")
	public ModelAndView deleteStudent(@ModelAttribute("student")Student student)
	{
		System.out.println(student.getStudId());

		int flag=0;
		flag=studentService.deleteStudent(student);
		if(flag==1)
		
			return new ModelAndView("delete_student","message","student data deleted successfully");
		
			return new ModelAndView("delete_student","message","Sorry,student data not deleted successfully,Try Again");
		
	}
	
	
	
}

