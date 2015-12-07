package com.balu.curd.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Exam")
public class Exam {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	 //private Integer id;
	@Column(name="s_no")
	private Integer sno;

	@Column(name="year")
	private String year;
	
	@Column(name="course")
	private String course;
	
	@Column(name="date")
	private String date;
	
	@Column(name="studentname")
	private String studentname;
	
	@Column(name="registrationno")
	private String registrationno;
	
	@Column(name="exam")
	private String exam;
	
	@Column(name="result")
	private String result;
	
	public Integer getSno() {
		return sno;
	}

	public void setSno(Integer sno) {
		this.sno = sno;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getRegistrationno() {
		return registrationno;
	}

	public void setRegistrationno(String registrationno) {
		this.registrationno = registrationno;
	}

	public String getExam() {
		return exam;
	}

	public void setExam(String exam) {
		this.exam = exam;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
}
