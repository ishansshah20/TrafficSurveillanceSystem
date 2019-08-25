package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.service.FeedbackService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackService feedbackService;

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/staff/loadFeedback", method = RequestMethod.GET)
	public ModelAndView loadFeedback(@ModelAttribute FeedbackVO feedbackVO) {

		return new ModelAndView("staff/addFeedback", "FeedbackVO", new FeedbackVO());
	}

	@RequestMapping(value = "/staff/insertFeedback", method = RequestMethod.POST)
	public ModelAndView insertFeedback(@ModelAttribute FeedbackVO feedbackVO) {

		feedbackVO.setStatus(true);
		
		String userName = BaseMethods.getUserName();
		List loginList  = loginService.searchLoginID(userName);
		LoginVO loginVO2 = (LoginVO) loginList.get(0);
		feedbackVO.setLoginVO(loginVO2);
		
		feedbackService.insertFeedback(feedbackVO);
		return new ModelAndView("redirect:/staff/loadFeedback");

	}

	
	  @RequestMapping(value = "/staff/viewFeedback", method = RequestMethod.GET)
	  public ModelAndView viewFeedback(@ModelAttribute FeedbackVO feedbackVO) {
	  
		  	String userName = BaseMethods.getUserName();

			List loginList  = loginService.searchLoginID(userName);
	    	
	    	/*System.out.println(userName);*/
			
			LoginVO loginVO2 = (LoginVO) loginList.get(0);
			
			feedbackVO.setLoginVO(loginVO2);
		  
			List feedbackList = this.feedbackService.viewFeedback(feedbackVO);
			return new ModelAndView("/staff/viewFeedback","feedbackList",feedbackList); 
	  }
	  
	  @RequestMapping(value = "/admin/viewFeedback", method = RequestMethod.GET)
	  public ModelAndView seeFeedback() {
	  
		  	List feedbackList = this.feedbackService.seeFeedback();
			return new ModelAndView("/admin/viewFeedback","feedbackList",feedbackList); 
	  }
	  
	  @RequestMapping(value = "/admin/deleteFeedback", method = RequestMethod.GET)
	  public ModelAndView deleteFeedback(@RequestParam("feedbackId") int feedbackId, @ModelAttribute FeedbackVO feedbackVO) {
	  
		  feedbackVO.setFeedbackId(feedbackId);
		  feedbackService.updateFeedback(feedbackVO);
		  return new ModelAndView("redirect:/admin/viewFeedback"); 
	  }
	 

}
