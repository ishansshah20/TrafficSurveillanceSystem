package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="complain_table")
public class ComplainVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int complainId;
	
	@Column(name="complainSubject")
	private String complainSubject;
	
	@Column(name="complainDescription")
	private String complainDescription;
	
	@Column(name="complainDate")
	private String complainDate;
	
	@Column(name="reply")
	private String reply;
	
	@Column(name="replyDate")
	private String replyDate;
	
	@Column(name="complainStatus")
	private String complainStatus = "PENDING" ;
	
	@Column(name="status")
	private boolean status = true;
	
	@ManyToOne
	private LoginVO loginVO;

	
	@Column
	private String complainFileName;
	
	@Column
	private String complainFilePath;
	
	
	
	public String getComplainFileName() {
		return complainFileName;
	}

	public void setComplainFileName(String complainFileName) {
		this.complainFileName = complainFileName;
	}

	public String getComplainFilePath() {
		return complainFilePath;
	}

	public void setComplainFilePath(String complainFilePath) {
		this.complainFilePath = complainFilePath;
	}

	public int getComplainId() {
		return complainId;
	}

	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}

	public String getComplainSubject() {
		return complainSubject;
	}

	public void setComplainSubject(String complainSubject) {
		this.complainSubject = complainSubject;
	}

	public String getComplainDescription() {
		return complainDescription;
	}

	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}

	public String getComplainDate() {
		return complainDate;
	}

	public void setComplainDate(String complainDate) {
		this.complainDate = complainDate;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public String getComplainStatus() {
		return complainStatus;
	}

	public void setComplainStatus(String complainStatus) {
		this.complainStatus = complainStatus;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	
	
	
	
	
	
}
