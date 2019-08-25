package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.LoginDAO;
import com.project.model.LoginVO;

@Service
public class LoginService {

	@Autowired
	LoginDAO loginDAO;
	
	@Transactional
	public void insertLogin(LoginVO loginVO){
		this.loginDAO.insertLogin(loginVO);
	}

	@Transactional
	public List searchLoginID(String userName) {
		List userList = loginDAO.searchByName(userName);
		return userList;
	}
	
	@Transactional
	public List searchSignalDataForGraph(String date ,String signalId) {
		List userList = loginDAO.searchSignalDataForGraph(date, signalId);
		return userList;
	}
	

	
}

