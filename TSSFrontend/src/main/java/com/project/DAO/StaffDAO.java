package com.project.DAO;

import java.util.List;

import com.project.model.StaffVO;

public interface StaffDAO {

	public void insertStaff(StaffVO staffVO);

	public List searchStaff();	
	
	public void blockStaff(int id);
	
	public void unblockStaff(int id);
	
}
