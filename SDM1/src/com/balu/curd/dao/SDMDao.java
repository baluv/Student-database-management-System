package com.balu.curd.dao;

import java.util.List;

import com.balu.curd.domain.Bdsfee;
import com.balu.curd.domain.Doc;
import com.balu.curd.domain.Exam;
import com.balu.curd.domain.Registration;

public interface SDMDao {
	

		public int saveRegistration(Registration regs);
		
		public List<Registration> registrationList();
		
		public Registration getRowById(int sno);
		
		public int saveBdsfee(Bdsfee bdsfee);
		
		public int updateRow(Registration regs);
		
		public List<Bdsfee> studentfeeList();

	    List<Registration> getStudentsByName(String studentname);

		public int saveExam(Exam exam);	
		
		public List<Exam> examdetailsList();
		
		public int saveDoc(Doc doc);

		public List<Doc> documentList();
		
}
