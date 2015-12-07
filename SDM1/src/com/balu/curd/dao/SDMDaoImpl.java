package com.balu.curd.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.balu.curd.domain.Bdsfee;
import com.balu.curd.domain.Doc;
import com.balu.curd.domain.Exam;
import com.balu.curd.domain.Registration;
@Transactional
@Repository("sdmDao")
public class SDMDaoImpl implements SDMDao{

	public SDMDaoImpl() {

	}
	@Autowired(required=true)
	private SessionFactory sessionfactory;
	@Override
	public int saveRegistration(Registration regs) {
		Session session= sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.saveOrUpdate(regs);
		transaction.commit();
		Serializable id= session.getIdentifier(regs);
		return (Integer) id;
	}
	@SuppressWarnings({ "unchecked" })
	@Override
	public List<Registration> registrationList() {
		List<Registration> registrationlist=null;
		Session session = sessionfactory.openSession();
		registrationlist = session.createQuery("from Registration").list();
		session.close();
		return registrationlist;
	}
	@Override
	public Registration getRowById(int sno) {
		Session session = sessionfactory.openSession();
		Registration regs = (Registration) session.load(Registration.class, sno);
		return regs;
	}
	@Override
	public int saveBdsfee(Bdsfee bdsfee) {
		Session session= sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.saveOrUpdate(bdsfee);
		transaction.commit();
		Serializable id= session.getIdentifier(bdsfee);
		return (Integer) id;
	}
	@Override
	public int updateRow(Registration regs) {
		Session session= sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.update(regs);
		transaction.commit();
		Serializable id=session.getIdentifier(regs);
		return (Integer) id;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Bdsfee> studentfeeList() {

		List<Bdsfee> Bdsfeelist=null;
		Session session = sessionfactory.openSession();
		Bdsfeelist = session.createQuery("from Bdsfee").list();
		session.close();
		return Bdsfeelist;
	}
	@Override
	public List<Registration> getStudentsByName(
			String studentname) {

		return registrationList();
	}
	@Override
	public int saveExam(Exam exam) {
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(exam);
		tx.commit();
		Serializable id = session.getIdentifier(exam);
		session.close();
		return (Integer) id;
	}
	@Override
	public List<Exam> examdetailsList() {

		Session session = sessionfactory.openSession();
		@SuppressWarnings("unchecked")
		List<Exam> examdetails = session.createQuery("from Exam").list();
		session.close();
		return examdetails;
	}
	@Override
	public int saveDoc(Doc doc) {

		Session session= sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.saveOrUpdate(doc);
		transaction.commit();
		Serializable id= session.getIdentifier(doc);
		return (Integer) id;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Doc> documentList() {
		List<Doc> documentlist=null;
		Session session = sessionfactory.openSession();
		documentlist = session.createQuery("from Doc").list();
		session.close();
		return documentlist;
	}


}


