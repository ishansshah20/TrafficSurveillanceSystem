package com.project.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.service.LoginService;
import com.project.service.VehicleService;
import com.project.utils.BaseMethods;

@Controller
public class MainController {

	
	@Autowired
	LoginService loginService;
	
	@Autowired
	VehicleService VEHICLEService;
	
	
	@RequestMapping(value="/")
	public ModelAndView loadIndex(){
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="staff/viewDetection")
	public ModelAndView viewDetection(){
		
		return new ModelAndView("staff/viewDetection");
	}
	
	@RequestMapping(value="/admin/index")
	public ModelAndView loadAdmin(){
		String userName = BaseMethods.getUserName();
		
		Date d = new Date();
		DateFormat d1 = new SimpleDateFormat("yyyy-MM-dd");
		
		List vehicleList = VEHICLEService.searchVehicleCount(d1.format(d),"1");
		List vehicleList2 = VEHICLEService.searchVehicleCount(d1.format(d),"2");
		List vehicleList3 = VEHICLEService.searchVehicleCount(d1.format(d),"3");
		List vehicleList4 = VEHICLEService.searchVehicleCount(d1.format(d),"4");
		
		System.out.println(vehicleList.size());
		return new ModelAndView("admin/index","userName",userName).addObject("vehicleList",vehicleList).addObject("vehicleList2",vehicleList2)
				.addObject("vehicleList3",vehicleList3).addObject("vehicleList4",vehicleList4);
	}
	
	@RequestMapping(value="/staff/index")
	public ModelAndView loadStaff(){
		String userName = BaseMethods.getUserName();
		return new ModelAndView("staff/index","userName",userName);
	}
	
	@RequestMapping(value = "/logout", method = {RequestMethod.POST, RequestMethod.GET})	
	public String viewUserDetails(ModelMap model,HttpServletResponse response,HttpServletRequest request) {

		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null) {
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	            request.getSession().invalidate();
	            request.getSession().setAttribute("tempStatus", "success");
	            request.getSession().setAttribute("statusText", "Logout Successfully!");
	}
	        return "login";
	        }
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}
	
	
}
