package com.balu.curd.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;




import com.balu.curd.domain.Login;
@Transactional
@Repository("loginDao")
public class LoginDaoImpl implements LoginDao {
	@Autowired(required=true)
	//	creating SessionFactory object
	private SessionFactory sessionFactory;
	public LoginDaoImpl() {

	}

	@SuppressWarnings({ "unchecked" })
	@Override
	public boolean checkLogin(Login login) {
		List<Login> listusers=null;
		boolean flag=false;
		Session session=sessionFactory.getCurrentSession();
		Criteria criteria=session.createCriteria(Login.class);
		Criterion criterion=Restrictions.eq("userName", login.getUserName());
		Criterion	criterion2= Restrictions.eq("password", login.getPassword());
		Criterion criterion3=Restrictions.and(criterion, criterion2);
		criteria.add(criterion3);

		listusers=criteria.list();
		if(!listusers.isEmpty())
		{
			flag=true;
		}
		else{
			flag=false;
		}

		return flag;
	}

	@SuppressWarnings("unused")
	@Override
	public Login checkLogout(Login login) {
		boolean flag=true;
		return login;

	}


}
