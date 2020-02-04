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
	
	
	//��ʾ���з�Դ
	@Override
			public String listAllHouse(Integer Sid,HttpSession session) 
			{
				List<House> listall=HouseMapper.listAllHouse(Sid); 				
				session.setAttribute("AllHouse", listall);			
				return "twoleader/All_HousingInformation";
			}
			
			
	//��ʾδ���/δ������Դ
		@Override
				public String listnotauditedHouse(Integer Sid,HttpSession session) 
				{
					List<House> listall=HouseMapper.listnotauditedHouse(Sid);   					
					session.setAttribute("NotAuditedHouse", listall);					
					return "twoleader/Not_audited";
				}
		
		
		//��ʾ�ѷ�����Դ
				@Override
						public String PublishedHouse(Integer Sid,HttpSession session) 
						{
							List<House> listall=HouseMapper.PublishedHouse(Sid);   							
							session.setAttribute("publishedhouse", listall);							
							return "twoleader/Published";
						}
		
		//�ѷ���/δ��˷�Դ������Ϣ
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
	
				
		//��ѯ��Դ
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
				
				
				//��ѯ��Դ
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
				//��ѯ��Դ
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
				
				//ɾ��δ��˷�Դ
				@Override
						public String delhouser(Integer OHid,House house,Model model,HttpSession session)
						{					   					  					 
						 HouseAddType houseaddtype=HouseMapper.Notauditeddetail(OHid);						 
						 int a=houseaddtype.getTId(); 
						 System.out.println(a);	 
						 HouseMapper.deltype(a);
						 return "redirect:/twoadmin/listnotauditedHouse.do?SId=1";
					
						}
					
				//������Դ
				@Override
						public String addhouseself(HouseAddType houseaddtype,Model model)
						{					   					  					 					    
					     HouseMapper.addhouseself3(houseaddtype);  //���뵽type��					 
					     int a=HouseMapper.addhouseself2();	   //�õ�Tid						    
					     System.out.println("TId:"+a);
					     
					    
					     houseaddtype.setTId(a);                  
					     HouseMapper.addhouseself(houseaddtype);		  //���뵽house��	
					     int b=HouseMapper.addhouseself4();	   //�õ�OHid
					     System.out.println("OHid:"+b);
					     
			             return "redirect:/twoadmin/Notauditeddetail.do?OHid="+b;	
			           
						}
				
				
				//��ת����Դҳ��
				@Override
						public String topublishhouse()
						{					   					  					 					   	    	 			    	
			             return "twoleader/Publishedself";			      
						}
				
				//��ת���༭��Դҳ��
				@Override
						public String edithouse(Integer OHid,HttpSession session)
						{					   					  					 
                         HouseAddType houseaddtype=HouseMapper.Notauditeddetail(OHid);					
					     session.setAttribute("notauditeddetail", houseaddtype);
					     
			             return "twoleader/Not_audited_edit";
			      
						}
				
				//�༭���ҷ�����Դ
				@Override
						public String editandpublishhouse(Integer OHid,HouseAddType houseaddtype,Model model,HttpSession session)
						{	
					HouseMapper.updatetype(houseaddtype);
					HouseMapper.updatehouse(houseaddtype);
				return "redirect:/twoadmin/Notauditeddetail.do?OHid="+OHid;
				
						}
				
				
}
