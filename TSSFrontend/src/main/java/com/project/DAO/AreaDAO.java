package com.project.DAO;

import java.util.List;

import com.project.model.AreaVO;

public interface AreaDAO {

	public void insertArea(AreaVO areaVO);
	
	public List searchArea();
	
	public List editArea(AreaVO areaVO);
}
