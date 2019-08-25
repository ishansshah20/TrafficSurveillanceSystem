package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.VehicleDAO;

@Service
public class VehicleService {
	
	@Autowired
	VehicleDAO vehicleDAO;
	
	@Transactional
	public List searchVehicleCount(String date,String signalId){
		List vehicleList = this.vehicleDAO.searchVehicleCount(date,signalId);
		return vehicleList;
	}
	
}
