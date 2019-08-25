package com.project.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.FeedbackDAO;
import com.project.model.FeedbackVO;

@Service
public class FeedbackService {
	
	@Autowired
	FeedbackDAO feedbackDAO;
	
	@Transactional
	public void insertFeedback(FeedbackVO feedbackVO)
	{
		this.feedbackDAO.insertFeedback(feedbackVO);
		
	}
	
	@Transactional
	public void updateFeedback(FeedbackVO feedbackVO)
	{
		this.feedbackDAO.updateFeedback(feedbackVO);
		
	}
	
	
	 @Transactional 
	 public List viewFeedback(FeedbackVO feedbackVO){
		 
		 List ls=this.feedbackDAO.viewFeedback(feedbackVO); 
		 return ls; 
		 }
	 
	 @Transactional 
	 public List seeFeedback(){
		 
		 List ls=this.feedbackDAO.seeFeedback(); 
		 return ls; 
		 }

}
