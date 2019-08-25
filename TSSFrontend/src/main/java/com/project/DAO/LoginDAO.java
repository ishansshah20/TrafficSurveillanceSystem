package com.project.DAO;

import java.util.List;

import com.project.model.LoginVO;

public interface LoginDAO {

	public void insertLogin(LoginVO loginVO);
	
	public List searchByName(String searchByName);

	public List searchSignalDataForGraph(String date,String signalId);
}
