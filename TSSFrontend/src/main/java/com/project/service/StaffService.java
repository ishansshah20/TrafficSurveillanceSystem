package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.StaffDAO;
import com.project.model.StaffVO;

@Service
public class StaffService {

	@Autowired
	StaffDAO staffDAO;
	
	@Transactional
	public void insertStaff(StaffVO staffVO){
		this.staffDAO.insertStaff(staffVO);
	}	
	
	@Transactional
	public List searchStaff(){
		List staffList = this.staffDAO.searchStaff();
		return staffList;
	}
	
	@Transactional
	public void blockStaff(int id){
		this.staffDAO.blockStaff(id);
		
	}
	
	@Transactional
	public void unblockStaff(int id){
		this.staffDAO.unblockStaff(id);
		
	}

}
