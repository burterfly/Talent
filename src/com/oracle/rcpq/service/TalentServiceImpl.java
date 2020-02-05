package com.oracle.rcpq.service;

import java.util.List;

import com.oracle.rcpq.model.Talent;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oracle.rcpq.dao.TalentMapper;

@Service("TalentService")
@Transactional
public  class TalentServiceImpl implements TalentService {
	@Resource
    public TalentMapper talentmapper;
	
	
	//显示所有房源
	@Override
	public String listAllTalent(HttpSession session) 
			{
		
		System.out.println("-----------------》service层-----------------》");
				List<Talent> listall=talentmapper.listAllTalent(); 				
				session.setAttribute("AllTalent", listall);	
				//-------------------------------------------------------
				for(int i=0;i<listall.size();i++)
				{
					int a=listall.get(i).getTid();
					System.out.println(a);
				}
				
				return "twoleader/Information";
			}
			
}