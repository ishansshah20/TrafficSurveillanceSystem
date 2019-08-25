package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVO;
import com.project.service.AreaService;

@Controller
public class AreaController {

	@Autowired
	AreaService areaService;
	
	@RequestMapping(value="admin/loadArea",method=RequestMethod.GET)
	public ModelAndView loadArea(){
		return new ModelAndView("admin/addArea","AreaVO",new AreaVO());
	}
	
	@RequestMapping(value="admin/insertArea",method=RequestMethod.POST)
	public ModelAndView insertArea(@ModelAttribute AreaVO areaVO){
		this.areaService.insertArea(areaVO);
		return new ModelAndView("redirect:/admin/viewArea");
	}
	
	@RequestMapping(value="admin/viewArea",method=RequestMethod.GET)
	public ModelAndView searchArea(){
		List areaList = this.areaService.searchArea();
		return new ModelAndView("admin/viewArea","areaList",areaList);
	}
	
	@RequestMapping(value="admin/deleteArea",method=RequestMethod.GET)
	public ModelAndView deleteArea(@ModelAttribute AreaVO areaVO,@RequestParam String areaId){
		
		areaVO.setAreaId(Integer.parseInt(areaId));
		List areaList = this.areaService.editArea(areaVO);
		
		AreaVO areaVO2 = (AreaVO)areaList.get(0);
		areaVO2.setStatus(false);

		this.areaService.insertArea(areaVO2);
		return new ModelAndView("redirect:/admin/viewArea");
	}
	
	@RequestMapping(value="admin/editArea",method=RequestMethod.GET)
	public ModelAndView editArea(@ModelAttribute AreaVO areaVO,@RequestParam String areaId){

		areaVO.setAreaId(Integer.parseInt(areaId));
		List areaList = this.areaService.editArea(areaVO);
		
		AreaVO areaVO2 = (AreaVO)areaList.get(0);

		return new ModelAndView("admin/addArea","AreaVO",areaVO2);
	}
	
}
