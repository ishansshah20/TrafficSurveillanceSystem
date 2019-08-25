package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.ComplaintDAO;
import com.project.model.ComplainVO;

@Service
public class ComplainService {

	@Autowired 
	ComplaintDAO complaintDAO;
	
	@Transactional
	public void insertComplaint(ComplainVO complaintVO) {
		
		this.complaintDAO.insertComplaint(complaintVO);
	}

	@Transactional
	public List viewComplaint() {
		
		List complaintList = this.complaintDAO.viewComplaint();
		
		return complaintList;
	}
	
	@Transactional
	public List searchComplaint(ComplainVO complaintVO) {
		
		List complaintList = this.complaintDAO.searchComplaint(complaintVO);
		
		return complaintList;	
	}
	
	@Transactional
    public List seeComplaint(ComplainVO complaintVO) {
    	
            List complainList =	this.complaintDAO.seeComplaint(complaintVO);
         
            return complainList;
    
    }
}
