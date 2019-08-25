package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.AreaDAO;
import com.project.model.AreaVO;

@Service
public class AreaService {

	@Autowired
	AreaDAO areaDAO;
	
	@Transactional
	public void insertArea(AreaVO areaVO){
		this.areaDAO.insertArea(areaVO);
	}
	
	@Transactional
	public List searchArea(){
		List areaList = this.areaDAO.searchArea();
		return areaList;
	}
	
	@Transactional
	public List editArea(AreaVO areaVO){
		List areaList  = this.areaDAO.editArea(areaVO);
		return areaList;
	}
	
}
