package com.balu.curd.domain;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@SuppressWarnings("unused")
@Entity
@Table(name="Registration")
public class Registration {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	 //private Integer id;
	@Column(name="s_no")
	private Integer sno;
	
	@Column(name="course")
		private String course;

	@Lob
	@Column(name="imagefile")
	private String imagefile;
	
	

	
	
	public String getImagefile() {
		System.out.println("getImagefile");
		return imagefile;
	}

	public void setImagefile(String imagefile) {
		System.out.println("setImagefile");
		this.imagefile = imagefile;
	}

	@Column(name="year")
	private String year;
	
	@Column(name="department")
	private String department;
	
	
	@Column(name="studentname")
	private String studentname;
	
	@Column(name="fathername")
	private String fathername;
	
	@Column(name="rgsno")
	private String rgsno;
	
	@Column(name="nationality")
	private String nationality;
	
	@Column(name="date")
	private String date;
	
	@Column(name="passportno")
	private String passportno;
	
	@Column(name="pid")
	private String  pid;
	
	@Column(name="validtill")
		private String validtill;
	
	@Column(name="vid")
	private String vid;
	
	@Column(name="dob")
	private String dob;
	
	@Column(name="mothername")
	private String mothername;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="studentvisano")
	private String studentvisano;
	
	@Column(name="category")
	private String category;
	
	@Column(name="rpv")
	private String rpv;
	

	@Column(name="comments")
	private String comments;
	
	@Column(name="wir")
	private String wir;
	
	@Column(name="cpfrom")
	private String cpfrom;
	
	@Column(name="cpto")
	private String cpto;
	
	@Column(name="ipfrom")
	private String ipfrom;
	
	@Column(name="ipto")
	private String ipto;
	
	@Column(name="warn")
	private String warn;
	
	@Column(name="ap")
	private String ap;

	public Integer getSno() {
		return sno;
	}

	public void setSno(Integer sno) {
		System.out.println("setSno");
		this.sno = sno;
	}

	public String getCourse() {
		System.out.println("getSno");
		return course;
	}

	public void setCourse(String course) {
		System.out.println("setCourse");
		this.course = course;
	}

	
	public String getYear() {
		System.out.println("getCourse");
		return year;
	}

	public void setYear(String year) {
		System.out.println("setYear");
		this.year = year;
	}

	public String getDepartment() {
		System.out.println("getYear");
		return department;
	}

	public void setDepartment(String department) {
		System.out.println("setDepartment");
		this.department = department;
	}

	public String getStudentname() {
		System.out.println("getDepartment");
		return studentname;
	}

	public void setStudentname(String studentname) {
		System.out.println("setStudentname");
		this.studentname = studentname;
	}

	public String getFathername() {
		System.out.println("getStudentname");
		return fathername;
	}

	public void setFathername(String fathername) {
		System.out.println("seFathName");
		this.fathername = fathername;
	}

	public String getRgsno() {
		System.out.println("geFathName");
		return rgsno;
	}

	public void setRgsno(String rgsno) {
		System.out.println("setregsno");
		this.rgsno = rgsno;
	}

	public String getNationality() {
		System.out.println("getregsno");
		return nationality;
	}

	public void setNationality(String nationality) {
		System.out.println("setNaltional");
		this.nationality = nationality;
	}

	public String getDate() {
		System.out.println("getNationlal");
		return date;
	}

	public void setDate(String date) {
		System.out.println("setDate");
		this.date = date;
	}

	public String getPassportno() {
		System.out.println("getDate");
		return passportno;
	}

	public void setPassportno(String passportno) {
		System.out.println("setPassno");
		this.passportno = passportno;
	}

	public String getPid() {
		System.out.println("getPassno");
		return pid;
	}

	public void setPid(String pid) {
		System.out.println("setpid");
		this.pid = pid;
	}

	public String getValidtill() {
		System.out.println("getpid");
		return validtill;
	}

	public void setValidtill(String validtill) {
		System.out.println("setvalidtill");
		this.validtill = validtill;
	}

	public String getVid() {
		System.out.println("getvalidtill");
		return vid;
	}

	public void setVid(String vid) {
		System.out.println("setvid");
		this.vid = vid;
	}

	public String getDob() {
		System.out.println("getvid");
		return dob;
	}

	public void setDob(String dob) {
		System.out.println("setdob");
		this.dob = dob;
	}

	public String getMothername() {
		System.out.println("getdob");
		return mothername;
	}

	public void setMothername(String mothername) {
		System.out.println("setmothernamwe");
		this.mothername = mothername;
	}

	public String getGender() {
		System.out.println("getmothernamwe");
		return gender;
	}

	public void setGender(String gender) {
		System.out.println("setGender");
		this.gender = gender;
	}

	public String getStudentvisano() {
		System.out.println("getGender");
		return studentvisano;
	}

	public void setStudentvisano(String studentvisano) {
		System.out.println("setStudent");
		this.studentvisano = studentvisano;
	}

	public String getCategory() {
		System.out.println("getStudent");
		return category;
	}

	public void setCategory(String category) {
		System.out.println("setCatgy");
		this.category = category;
	}

	public String getRpv() {
		System.out.println("getCatgy");
		return rpv;
	}

	public void setRpv(String rpv) {
		System.out.println("setRpv");
		this.rpv = rpv;
	}

	public String getComments() {
		System.out.println("getRpv");
		return comments;
	}

	public void setComments(String comments) {
		System.out.println("setComments");
		this.comments = comments;
	}

	public String getWir() {
		System.out.println("getComments");
		return wir;
	}

	public void setWir(String wir) {
		System.out.println("setwir");
		this.wir = wir;
	}

	public String getCpfrom() {
		System.out.println("getwir");
		return cpfrom;
	}

	public void setCpfrom(String cpfrom) {
		System.out.println("setcpfrom");
		this.cpfrom = cpfrom;
	}

	public String getCpto() {
		System.out.println("getcpfrom");
		return cpto;
	}

	public void setCpto(String cpto) {
		System.out.println("setcpto");
		this.cpto = cpto;
	}

	public String getIpfrom() {
		System.out.println("getcpto");
		return ipfrom;
	}

	public void setIpfrom(String ipfrom) {
		System.out.println("setipform");
		this.ipfrom = ipfrom;
	}

	public String getIpto() {
		System.out.println("getipform");
		return ipto;
	}

	public void setIpto(String ipto) {
		System.out.println("setipto");
		this.ipto = ipto;
	}

	public String getWarn() {
		System.out.println("getwarn");
		return warn;
	}

	public void setWarn(String warn) {
		System.out.println("setwarn");
		this.warn = warn;
	}

	public String getAp() {
		System.out.println("getwarn");
		return ap;
	}

	public void setAp(String ap) {
		System.out.println("setap");
		this.ap = ap;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}

	

