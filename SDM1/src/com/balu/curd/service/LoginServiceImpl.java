package com.balu.curd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balu.curd.dao.LoginDao;
import com.balu.curd.domain.Login;
@Service("loginService")
public class LoginServiceImpl  implements LoginService {
@Autowired(required=true)
private LoginDao loginDao;
	public LoginServiceImpl() {
		
	}

	@Override
	public boolean checkLogin(Login login) {
		// TODO Auto-generated method stub
		return loginDao.checkLogin(login);
	}

	@Override
	public Login checkLogout(Login login) {
		
		return loginDao.checkLogout(login);
	}

}
