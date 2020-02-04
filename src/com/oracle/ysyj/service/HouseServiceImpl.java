package com.oracle.ysyj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import com.oracle.ysyj.dao.*;
import com.oracle.ysyj.model.House;


import com.oracle.ysyj.model.HouseAddType;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

@Service("HouseService")
@Transactional
public class HouseServiceImpl implements HouseService {
	@Resource
    public HouseMapper HouseMapper;
	
	
	//显示所有房源
	@Override
			public String listAllHouse(Integer Sid,HttpSession session) 
			{
				List<House> listall=HouseMapper.listAllHouse(Sid); 				
				session.setAttribute("AllHouse", listall);			
				return "twoleader/All_HousingInformation";
			}
			
			
	//显示未审核/未发布房源
		@Override
				public String listnotauditedHouse(Integer Sid,HttpSession session) 
				{
					List<House> listall=HouseMapper.listnotauditedHouse(Sid);   					
					session.setAttribute("NotAuditedHouse", listall);					
					return "twoleader/Not_audited";
				}
		
		
		//显示已发布房源
				@Override
						public String PublishedHouse(Integer Sid,HttpSession session) 
						{
							List<House> listall=HouseMapper.PublishedHouse(Sid);   							
							session.setAttribute("publishedhouse", listall);							
							return "twoleader/Published";
						}
		
		//已发布/未审核房源详情信息
				@Override
						public String Notauditeddetail(Integer OHid,House houses,Model model,HttpSession session) 
						{
				
					HouseAddType houseaddtype=HouseMapper.Notauditeddetail(OHid);					
					session.setAttribute("notauditeddetail", houseaddtype);
					if(houseaddtype.getHState()==1)
					{
						return "twoleader/Published_detail";
					}
					
					else		
							return "twoleader/Not_audited_detail";
						}
	
				
		//查询房源
				@Override
						public String selectHouse(Integer OHid,Integer Sid,Integer HState,House house,Model model,HttpSession session)
						{
				    	Map<String, Object> map = new HashMap<String, Object>();
				    	 map.put("OHid", OHid);
				      	 map.put("HState",HState);
				         map.put("Sid", Sid);				
			    	     List<House> listall=HouseMapper.selectHouse(map); 					 	
						 session.setAttribute("AllHouse", listall);
						 return "twoleader/All_HousingInformation";
						}
				
				
				//查询房源
				@Override
						public String selectHousetwo(Integer OHid,Integer Sid,House house,Model model,HttpSession session)
						{
					    System.out.println(OHid);
					    System.out.println(Sid);
					    Map<String, Object> map = new HashMap<String, Object>();
				    	map.put("OHid", OHid);
				      	map.put("Sid",Sid);
				        List<House> listall=HouseMapper.selectHousetwo(map); 					     
						 session.setAttribute("publishedhouse", listall);
						 return "twoleader/Published";
						 
						}
				//查询房源
				@Override
						public String selectHousethree(Integer OHid,Integer Sid,House house,Model model,HttpSession session)
						{
					    System.out.println(OHid);
					    System.out.println(Sid);					    
				        Map<String, Object> map = new HashMap<String, Object>();
				    	map.put("OHid", OHid);
				      	map.put("Sid",Sid);
				        List<House> listall=HouseMapper.selectHousethree(map);				        
				       	 session.setAttribute("NotAuditedHouse",listall);
						 return "twoleader/Not_audited";
						 
						}
				
				//删除未审核房源
				@Override
						public String delhouser(Integer OHid,House house,Model model,HttpSession session)
						{					   					  					 
						 HouseAddType houseaddtype=HouseMapper.Notauditeddetail(OHid);						 
						 int a=houseaddtype.getTId(); 
						 System.out.println(a);	 
						 HouseMapper.deltype(a);
						 return "redirect:/twoadmin/listnotauditedHouse.do?SId=1";
					
						}
					
				//发布房源
				@Override
						public String addhouseself(HouseAddType houseaddtype,Model model)
						{					   					  					 					    
					     HouseMapper.addhouseself3(houseaddtype);  //插入到type表					 
					     int a=HouseMapper.addhouseself2();	   //拿到Tid						    
					     System.out.println("TId:"+a);
					     
					    
					     houseaddtype.setTId(a);                  
					     HouseMapper.addhouseself(houseaddtype);		  //插入到house表	
					     int b=HouseMapper.addhouseself4();	   //拿到OHid
					     System.out.println("OHid:"+b);
					     
			             return "redirect:/twoadmin/Notauditeddetail.do?OHid="+b;	
			           
						}
				
				
				//跳转到房源页面
				@Override
						public String topublishhouse()
						{					   					  					 					   	    	 			    	
			             return "twoleader/Publishedself";			      
						}
				
				//跳转到编辑房源页面
				@Override
						public String edithouse(Integer OHid,HttpSession session)
						{					   					  					 
                         HouseAddType houseaddtype=HouseMapper.Notauditeddetail(OHid);					
					     session.setAttribute("notauditeddetail", houseaddtype);
					     
			             return "twoleader/Not_audited_edit";
			      
						}
				
				//编辑并且发布房源
				@Override
						public String editandpublishhouse(Integer OHid,HouseAddType houseaddtype,Model model,HttpSession session)
						{	
					HouseMapper.updatetype(houseaddtype);
					HouseMapper.updatehouse(houseaddtype);
				return "redirect:/twoadmin/Notauditeddetail.do?OHid="+OHid;
				
						}
				
				
}
