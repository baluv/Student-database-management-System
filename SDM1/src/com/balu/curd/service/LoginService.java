package com.balu.curd.service;

import com.balu.curd.domain.Login;

/**
 * @author bmv
 *
 */
public interface LoginService {
	boolean checkLogin(Login login);
	Login checkLogout(Login login);
}
