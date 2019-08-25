package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="vehicle_table")
public class VehicleVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name="vehicleCount")
	private String vehicleCount;
	
	@Column(name="today_date")
	private String todayDate;
	
	@Column(name="start_time")
	private String startTime;
	
	@Column(name="end_time")
	private String endTime;
	
	@Column(name="signalId")
	private String signalId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVehicleCount() {
		return vehicleCount;
	}

	public void setVehicleCount(String vehicleCount) {
		this.vehicleCount = vehicleCount;
	}

	public String getTodayDate() {
		return todayDate;
	}

	public void setTodayDate(String todayDate) {
		this.todayDate = todayDate;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getSignalId() {
		return signalId;
	}

	public void setSignalId(String signalId) {
		this.signalId = signalId;
	}
	
	
}
