package com.balu.curd.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Doc")
public class Doc {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	 //private Integer id;
	@Column(name="s_no")
	private Integer sno;

	
	@Column(name="studentname")
	private String studentname;
	
	@Column(name="registrationno")
	private String registrationno;
	
	@Column(name="seat")
	private String seat;
	
	@Column(name="academicyear")
	private String academicyear;
	
	@Column(name="joiningdate")
	private String joiningdate;
	
	@Column(name="docsubmitteddate")
	private String docsubmitteddate;
	
	@Column(name="sslc")
	private String sslc;
	
	@Column(name="puc")
	private String puc;
	
	@Column(name="degree")
	private String degree;

	@Column(name="pc")
	private String pc;
	
	@Column(name="tc")
	private String tc;
	
	@Column(name="migration")
	private String migration;
	
	@Column(name="nri")
	private String nri;
	

	@Column(name="castecertificate")
	private String castecertificate;
	
	
	@Column(name="incomecertificate")
	private String incomecertificate;
	
	@Column(name="rankcard")
	private String rankcard;
	
	public Integer getSno() {
		return sno;
	}

	public void setSno(Integer sno) {
		this.sno = sno;
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

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getAcademicyear() {
		return academicyear;
	}

	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}

	public String getJoiningdate() {
		return joiningdate;
	}

	public void setJoiningdate(String joiningdate) {
		this.joiningdate = joiningdate;
	}

	public String getDocsubmitteddate() {
		return docsubmitteddate;
	}

	public void setDocsubmitteddate(String docsubmitteddate) {
		this.docsubmitteddate = docsubmitteddate;
	}

	public String getSslc() {
		return sslc;
	}

	public void setSslc(String sslc) {
		this.sslc = sslc;
	}

	public String getPuc() {
		return puc;
	}

	public void setPuc(String puc) {
		this.puc = puc;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getPc() {
		return pc;
	}

	public void setPc(String pc) {
		this.pc = pc;
	}

	public String getTc() {
		return tc;
	}

	public void setTc(String tc) {
		this.tc = tc;
	}

	public String getMigration() {
		return migration;
	}

	public void setMigration(String migration) {
		this.migration = migration;
	}

	public String getNri() {
		return nri;
	}

	public void setNri(String nri) {
		this.nri = nri;
	}

	public String getCastecertificate() {
		return castecertificate;
	}

	public void setCastecertificate(String castecertificate) {
		this.castecertificate = castecertificate;
	}

	public String getIncomecertificate() {
		return incomecertificate;
	}

	public void setIncomecertificate(String incomecertificate) {
		this.incomecertificate = incomecertificate;
	}

	public String getRankcard() {
		return rankcard;
	}

	public void setRankcard(String rankcard) {
		this.rankcard = rankcard;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
