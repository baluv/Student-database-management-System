/**
 * 
 */
package com.balu.curd.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author bmv00_000
 *
 */
@SuppressWarnings("serial")
@Entity
@Table(name="Student")
public class Student implements Serializable {

	public Student() {
	}
	@Id
	@Column(name="st_id")
	private String studId;
	
	@Column(name="st_name")
	private String studName;
	
	@Column(name="st_marks")
	private double studMarks;

	@Column(name="st_Email")
	private String studEmail;
	
	@Column(name="st_phNo")
	private long studphNo;

	public String getStudId() {
		return studId;
	}

	public void setStudId(String studId) {
		this.studId = studId;
	}

	public String getStudName() {
		return studName;
	}

	public void setStudName(String studName) {
		this.studName = studName;
	}

	public double getStudMarks() {
		return studMarks;
	}

	public void setStudMarks(double studMarks) {
		this.studMarks = studMarks;
	}

	public String getStudEmail() {
		return studEmail;
	}

	public void setStudEmail(String studEmail) {
		this.studEmail = studEmail;
	}

	public long getStudphNo() {
		return studphNo;
	}

	public void setStudphNo(long studphNo) {
		this.studphNo = studphNo;
	}

	
	
}
