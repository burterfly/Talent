package com.oracle.rcpq.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.oracle.rcpq.service.TalentService;




@Controller
public class TalentController {
	@Autowired
	private TalentService talentservice;
	
	//所有房源显示
	@RequestMapping("/twoadmin/listAllTalent")
	public String listAllTalent(HttpSession session)
	{		
		
		
		System.out.println("-----------------》controller层-----------------》");
		
		return talentservice.listAllTalent(session);	
	}
	
}