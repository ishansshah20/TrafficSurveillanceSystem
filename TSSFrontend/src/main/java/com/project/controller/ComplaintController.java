package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ComplainVO;
import com.project.model.LoginVO;
import com.project.service.ComplainService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;


@Controller
public class ComplaintController {

	@Autowired
	ComplainService complaintService;
	
	
	@Autowired
	LoginService loginService;
	
	
	@RequestMapping(value="/staff/loadComplaint",method=RequestMethod.GET)
	public ModelAndView loadComplaint(@ModelAttribute ComplainVO complaintVO){
		return new ModelAndView("staff/addComplaint","ComplainVO", new ComplainVO());
	}
	
	@RequestMapping(value="/staff/insertComplaint",method=RequestMethod.POST)
	public ModelAndView insertComplaint(@ModelAttribute ComplainVO complainVO, @RequestParam(name="file") MultipartFile file ,HttpSession session){
		
		String path = session.getServletContext().getRealPath("/");
		String fileName = file.getOriginalFilename();
		
		String finalPath = path+"document/complain/"; 
		
		try {
			byte b[] = file.getBytes();
			
			BufferedOutputStream bufferedOutputStream = 
					 new BufferedOutputStream(new FileOutputStream(finalPath+fileName));
			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Date d = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		
		String userName = BaseMethods.getUserName();

		List loginList  = loginService.searchLoginID(userName);
		
		LoginVO loginVO2 = (LoginVO) loginList.get(0);
		complainVO.setLoginVO(loginVO2);
		complainVO.setComplainDate(dateFormat.format(d));
		complainVO.setComplainFileName(fileName);
		complainVO.setComplainFilePath(finalPath);
		complainVO.setComplainStatus("PENDING");
		this.complaintService.insertComplaint(complainVO);
		return new ModelAndView("redirect:/staff/loadComplaint");
	}
	
	@RequestMapping(value="/admin/viewComplain",method=RequestMethod.GET)
	public ModelAndView viewComplain() {
		
		List complaintList = this.complaintService.viewComplaint();
		
		return new ModelAndView("/admin/viewComplain","complaintList",complaintList);
		
	}
	
	@RequestMapping(value="admin/replytoUser",method=RequestMethod.GET)
	public ModelAndView loadReply(@RequestParam("id")int id,@ModelAttribute ComplainVO complainVO) {
		
		
		complainVO.setComplainId(id);
		
		List complaintList = this.complaintService.searchComplaint(complainVO);
		
		return new ModelAndView("admin/addReply","ComplainVO",complaintList.get(0));
	}
	
	@RequestMapping(value="admin/insertReply",method=RequestMethod.POST)
	public ModelAndView insertReply(@ModelAttribute ComplainVO complaintVO) {
		
		Date d = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		
		complaintVO.setReplyDate(dateFormat.format(d));
		complaintVO.setComplainStatus("resolved");
		
		this.complaintService.insertComplaint(complaintVO);
		
		return new ModelAndView("redirect:/admin/viewComplain");
	}
	
	@RequestMapping(value="staff/viewReply",method=RequestMethod.GET)
	public ModelAndView seeComplaint(@ModelAttribute ComplainVO complaintVO) {
		
		
		String userName = BaseMethods.getUserName();

		List loginList  = loginService.searchLoginID(userName);
    	
    	/*System.out.println(userName);*/
		
		LoginVO loginVO2 = (LoginVO) loginList.get(0);
		
		complaintVO.setLoginVO(loginVO2);
		
		List complaintList = this.complaintService.seeComplaint(complaintVO);
		
		return new ModelAndView("/staff/viewComplain","complaintList",complaintList);
		
	}
}
