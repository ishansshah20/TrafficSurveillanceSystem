package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.StaffVO;
import com.project.service.AreaService;
import com.project.service.LoginService;
import com.project.service.StaffService;
import com.project.utils.BaseMethods;

@Controller
public class StaffController {


	@Autowired
	LoginService loginService;
	

	@Autowired
	StaffService staffService;
	
	@Autowired
	AreaService areaService;
	
	
	@RequestMapping(value="/admin/loadStaff",method=RequestMethod.GET)
	public ModelAndView loadStaff(){
		List areaList = this.areaService.searchArea();
		return new ModelAndView("admin/addStaff","StaffVO",new StaffVO()).addObject("areaList",areaList);
	}

	@RequestMapping(value="/admin/insertStaff",method=RequestMethod.POST)
	public ModelAndView insertStaff(@ModelAttribute StaffVO staffVO,@ModelAttribute LoginVO loginVO){
		
		String password = BaseMethods.generatePassword();
		
		BaseMethods.sendMail(staffVO.getLoginVO().getUsername(), password, staffVO.getFirstName());
		
		loginVO.setUsername(staffVO.getLoginVO().getUsername());
		
		String encPassword;
		try {
			encPassword = BaseMethods.encrypt(password,"hdydbhdy7gg71432356");
		
			System.out.println("ENCRYPT ::::: " + encPassword);
			
			String decPassword = BaseMethods.decrypt(encPassword,"hd2356");	
			
			System.out.println("DECRYPT ::::: " + decPassword);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		loginVO.setPassword(password);
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_STAFF");
		
		
		this.loginService.insertLogin(loginVO);
		
		staffVO.setLoginVO(loginVO);
		
		this.staffService.insertStaff(staffVO);
		
		return new ModelAndView("redirect:/admin/viewStaff");
	}
	
	@RequestMapping(value="/admin/viewStaff",method=RequestMethod.GET)
	public ModelAndView viewStaff(){
		List staffList = this.staffService.searchStaff();
		return new ModelAndView("admin/viewStaff","staffList",staffList);
	}
	
	@RequestMapping(value="/admin/blockStaff",method=RequestMethod.GET)
	public ModelAndView blockStaff(@RequestParam("id") String id){
		
		int Lid= Integer.parseInt(id);
		staffService.blockStaff(Lid);
		List staffList = this.staffService.searchStaff();
		return new ModelAndView("admin/viewStaff","staffList",staffList);
	}
	
	@RequestMapping(value="/admin/unblockStaff",method=RequestMethod.GET)
	public ModelAndView unblockStaff(@RequestParam("id") String id){
		
		int Lid= Integer.parseInt(id);
		staffService.unblockStaff(Lid);
		List staffList = this.staffService.searchStaff();
		return new ModelAndView("admin/viewStaff","staffList",staffList);
	}
}
