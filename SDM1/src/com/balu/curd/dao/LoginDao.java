package com.balu.curd.dao;

import com.balu.curd.domain.Login;

public interface LoginDao {
boolean checkLogin (Login login);
Login checkLogout (Login login);
}
