package com.balu.curd.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Bdsfee")
public class Bdsfee {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name="s_no")
	private Integer sno;

	@Column(name="year")
	private String year;

	@Column(name="date")
	private String date;

	@Column(name="studentname")
	private String studentname;

	@Column(name="totalamount")
	private Integer totalamount;

	@Column(name="paidamount")
	private Integer paidamount;

	@Column(name="dueamount")
	private Integer dueamount;

	@Column(name="status")
	private String status;

	@Column(name="paymode")
	private String paymode;

	@Column(name="amount")
	private Integer amount;

	@Column(name="bankname")
	private String bankname;

	@Column(name="ddnumber")
	private Integer ddnumber;

	@Column(name="acnumber")
	private Integer acnumber;

	@Column(name="acholdername")
	private String acholdername;

	@Column(name="ifsc")
	private String ifsc;

	@Column(name="amount1")
	private Integer amount1;

	@Column(name="amount2")
	private Integer amount2;

	@Column(name="amount3")
	private Integer amount3;

	@Column(name="bankname1")
	private String bankname1;

	@Column(name="acnumber1")
	private Integer acnumber1;

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


	public Integer getTotalamount() {
		return totalamount;
	}


	public void setTotalamount(Integer totalamount) {
		this.totalamount = totalamount;
	}


	public Integer getPaidamount() {
		return paidamount;
	}


	public void setPaidamount(Integer paidamount) {
		this.paidamount = paidamount;
	}


	public Integer getDueamount() {
		return dueamount;
	}


	public void setDueamount(Integer dueamount) {
		this.dueamount = dueamount;
	}

	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getPaymode() {
		return paymode;
	}

	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}

	public Integer getAmount() {
		return amount;
	}


	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public Integer getDdnumber() {
		return ddnumber;
	}


	public void setDdnumber(Integer ddnumber) {
		this.ddnumber = ddnumber;
	}


	public Integer getAcnumber() {
		return acnumber;
	}


	public void setAcnumber(Integer acnumber) {
		this.acnumber = acnumber;
	}


	public String getAcholdername() {
		return acholdername;
	}


	public void setAcholdername(String acholdername) {
		this.acholdername = acholdername;
	}


	public String getIfsc() {
		return ifsc;
	}


	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}


	public Integer getAmount1() {
		return amount1;
	}


	public void setAmount1(Integer amount1) {
		this.amount1 = amount1;
	}


	public Integer getAmount2() {
		return amount2;
	}


	public void setAmount2(Integer amount2) {
		this.amount2 = amount2;
	}


	public Integer getAmount3() {
		return amount3;
	}


	public void setAmount3(Integer amount3) {
		this.amount3 = amount3;
	}


	public String getBankname1() {
		return bankname1;
	}


	public void setBankname1(String bankname1) {
		this.bankname1 = bankname1;
	}


	public Integer getAcnumber1() {
		return acnumber1;
	}


	public void setAcnumber1(Integer acnumber1) {
		this.acnumber1 = acnumber1;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
