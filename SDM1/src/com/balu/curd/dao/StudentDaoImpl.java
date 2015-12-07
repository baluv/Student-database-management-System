package com.balu.curd.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.balu.curd.domain.Student;
@Transactional
@Repository("studentDao")
public class StudentDaoImpl implements StudentDao {
	@Autowired(required=true)
	private SessionFactory sessionFactory;
	public StudentDaoImpl() {

	}

	@Override
	public boolean insertStudent(Student student) {
		boolean flag=false;
		try{
			sessionFactory.getCurrentSession().save(student);
			flag=true;
		}
		catch(Exception e){
			flag=false;
			System.out.println("the err is"+e);
		}
		return flag;
	}

	@Override
	public boolean updateStudent(Student student) {
		boolean flag=false;
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(student);
			flag = true;
		}catch(Exception e)
		{
			System.out.println("the error is "+e);
			flag=false;
		}
		return flag;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> listStudent() {
		List<Student> listStudents=null;
		try {
			listStudents = sessionFactory.getCurrentSession().createCriteria(Student.class).list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("list size : "+listStudents.size());
		return listStudents;
	}

	@Override

	public int deleteStudent(Student student) {
		System.out.println("delete exe......");
		int flag = 0;
		Session session = sessionFactory.getCurrentSession();
		System.out.println(student.getStudId());


		Query query=session.createQuery("delete from Student s where s.studId='"+student.getStudId()+"'");
		int i = query.executeUpdate();
		if(i==1)
		{
			try {
				flag = 1;

			} 
				catch (Exception e) {
				flag = 0;
				System.out.println("id doesnt exist....???");
				}
			} else {
				flag = 0;
			}
			return flag;
	
		}
}




