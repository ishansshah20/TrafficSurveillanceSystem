package com.project.DAO;

import java.util.List;

import com.project.model.FeedbackVO;


public interface FeedbackDAO {
	
	public void insertFeedback(FeedbackVO feedbackVO);
	
	public List viewFeedback(FeedbackVO feedbackVO);
	
	public List seeFeedback();
	
	public void updateFeedback(FeedbackVO feedbackVO);
	
	

}
