package com.project.DAO;

import java.util.List;

import com.project.model.ComplainVO;

public interface ComplaintDAO {

	void insertComplaint(ComplainVO complainVO);
	
	public List viewComplaint();

	List searchComplaint(ComplainVO complainVO);

	List seeComplaint(ComplainVO complainVO);

}
