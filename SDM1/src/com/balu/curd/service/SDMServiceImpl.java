/**
 * 
 */
package com.balu.curd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.balu.curd.dao.SDMDao;
import com.balu.curd.domain.Bdsfee;
import com.balu.curd.domain.Doc;
import com.balu.curd.domain.Exam;
import com.balu.curd.domain.Registration;

/**
 * @author BALU
 *
 */
@Transactional
@Service("sdmService")
public class SDMServiceImpl implements SDMService {

	
	public SDMServiceImpl() {
		
	}
	@Autowired(required=true)
	private SDMDao sdmDao;
	@Override
	public int saveRegistration(Registration regs) {
	 
		return sdmDao.saveRegistration(regs);
	}
	@Override
	public List<Registration> registrationList() {
	 
		return sdmDao.registrationList();
	}
	@Override
	public Registration getRowById(int sno) {
	 
		return sdmDao.getRowById(sno);
	}
	@Override
	public int saveBdsfee(Bdsfee bdsfee) {
	 
		return sdmDao.saveBdsfee(bdsfee);
	}
	@Override
	public int updateRow(Registration regs) {
	 
		return sdmDao.updateRow(regs);
	}
	@Override
	public List<Bdsfee> studentfeeList() {
	 
		return sdmDao.studentfeeList();
	}
	@Override
	public List<Registration> getStudentsByName(String studentname) {
	 
		return sdmDao.getStudentsByName(studentname);
	}
	@Override
	public int saveExam(Exam exam) {
	 
		return sdmDao.saveExam(exam);
	}
	@Override
	public List<Exam> examdetailsList() {
	 
		return sdmDao.examdetailsList();
	}
	@Override
	public int saveDoc(Doc doc) {
	 
		return sdmDao.saveDoc(doc);
	}
	@Override
	public List<Doc> documentList() {
	 
		return sdmDao.documentList();
	}
	
	
	}

	
	