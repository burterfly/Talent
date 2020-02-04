package com.oracle.ysyj.controller;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oracle.ysyj.model.House;
import com.oracle.ysyj.model.HouseAddType;

import com.oracle.ysyj.service.*;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class HouseController {
	@Autowired
	private HouseService HouseService;
	
	//所有房源显示
	@RequestMapping("/twoadmin/listAllHouse")
	public String listAllHouse(Integer SId,HttpSession session)
	{		
		return HouseService.listAllHouse(SId,session);	
	}


	//未审核房源显示
	
	@RequestMapping("/twoadmin/listnotauditedHouse")
	public String listnotauditedHouse(Integer SId,HttpSession session)
	{
		return HouseService.listnotauditedHouse(SId,session);	
	}
		
	//已发布房源显示
	@RequestMapping("/twoadmin/PublishedHouse")
	public String PublishedHouse(Integer SId,HttpSession session)
	{
		return HouseService.PublishedHouse(SId,session);	
	}
	
	
	//已发布/未审核房源详情信息显示
		@RequestMapping("/twoadmin/Notauditeddetail")
		public String Notauditeddetail(Integer OHid,House house,Model model,HttpSession session)			
		{			
			return HouseService.Notauditeddetail(OHid,house,model,session);	
		}
		
		
		
	//查询房源
				@RequestMapping("/twoadmin/selectHouse")
				public String selectHouse(Integer OHid,Integer SId,Integer HState,House house,Model model,HttpSession session)			
				{
					
					return HouseService.selectHouse(OHid,SId,HState,house,model,session);
					
				}
				
	//已发布查询房源
				@RequestMapping("/twoadmin/selectHousetwo")
				public String selectHousetwo(Integer OHid,Integer SId,House house,Model model,HttpSession session)			
				{
					
					return HouseService.selectHousetwo(OHid,SId,house,model,session);
					
				}
				
				//未审核查询房源
				@RequestMapping("/twoadmin/selectHousethree")
				public String selectHousethree(Integer OHid,Integer SId,House house,Model model,HttpSession session)			
				{
					
					return HouseService.selectHousethree(OHid,SId,house,model,session);
					
				}
				
				//删除未审核房源
				@RequestMapping("/twoadmin/delhouser")
				public String delhouser(Integer OHid,House house,Model model,HttpSession session)			
				{
					
					return HouseService.delhouser(OHid,house,model,session);
					
				}
				
				
				//自己发布房源
				@RequestMapping("/twoadmin/addhouseself")
				public String addhouseself(
						@Param("HName") String HName,
						@Param("HTel") String HTel,
						@Param("HHouseName") String HHouseName,
						@Param("HAddress") String HAddress,
						@Param("HArea") Integer HArea,
						@Param("HPrice") int HPrice,
						@Param("TAir") int TAir,
						@Param("TParking") int TParking,
						@Param("THall") int THall,
						@Param("TBedroom") int TBedroom,
						@Param("TKitchen") int TKitchen,
						@Param("TToilet") int TToilet,
						@Param("HSurroud") String HSurroud,
						@Param("HTraffic") String HTraffic,
						@Param("THotWater") String THotWater,
						@Param("TWifi") String TWifi,
						@Param("HCertificate") String HCertificate,
						@Param("TWaterElec") String TWaterElec,
						@Param("HWay") String HWay,
						Integer SId,
						
					HttpServletRequest request,Model model) throws Exception{
					HouseAddType houseaddtype =new HouseAddType();

					houseaddtype.setHName(HName);
					houseaddtype.setHTel(HTel);
					houseaddtype.setHHouseName(HHouseName);
					houseaddtype.setHAddress(HAddress);
					houseaddtype.setHArea(HArea);
					houseaddtype.setHPrice(HPrice);					
					houseaddtype.setHSurroud(HSurroud);
					houseaddtype.setHTraffic(HTraffic);					
					houseaddtype.setHCertificate(HCertificate);					
					houseaddtype.setHWay(HWay);
					houseaddtype.setSid(SId);
					houseaddtype.setHState(1);
					houseaddtype.setHBusiness(0);
					
					houseaddtype.setTAir(TAir);
					houseaddtype.setTParking(TParking);
					houseaddtype.setTHall(THall);
					houseaddtype.setTBedroom(TBedroom);
					houseaddtype.setTKitchen(TKitchen);
					houseaddtype.setTToilet(TToilet);
					houseaddtype.setTHotWater(THotWater);
					houseaddtype.setTWifi(TWifi);
					houseaddtype.setTWaterElec(TWaterElec);
					
			        return HouseService.addhouseself(houseaddtype, model);	
				}
				
				//跳转到发布房源页面
				@RequestMapping("/twoadmin/topublishhouse")
				public String topublishhouse()			
				{
					
					return HouseService.topublishhouse();
					
				}
				
				//跳转审核页面
				@RequestMapping("/twoadmin/edithouse")
				public String edithouse(Integer OHid,HttpSession session)			
				{
					
					return HouseService.edithouse(OHid,session);
					
				}
				
				//提交已经审核的页面
				@RequestMapping("/twoadmin/editandpublishhouse")				
				public String editandpublishhouse(
						@Param("HName") String HName,
						@Param("HTel") String HTel,
						@Param("HHouseName") String HHouseName,
						@Param("HAddress") String HAddress,
						@Param("HArea") Integer HArea,
						@Param("HPrice") int HPrice,
						@Param("TAir") int TAir,
						@Param("TParking") int TParking,
						@Param("THall") int THall,
						@Param("TBedroom") int TBedroom,
						@Param("TKitchen") int TKitchen,
						@Param("TToilet") int TToilet,
						@Param("HSurroud") String HSurroud,
						@Param("HTraffic") String HTraffic,
						@Param("THotWater") String THotWater,
						@Param("TWifi") String TWifi,
						@Param("HCertificate") String HCertificate,
						@Param("TWaterElec") String TWaterElec,
						@Param("HWay") String HWay,
						Integer OHid,
						Integer TId,
					HttpServletRequest request,Model model,HttpSession session) throws Exception{
					HouseAddType houseaddtype =new HouseAddType();
					System.out.println(OHid);
					System.out.println(TId);
					
					
					houseaddtype.setOHid(OHid);;
					houseaddtype.setHName(HName);
					houseaddtype.setHTel(HTel);
					houseaddtype.setHHouseName(HHouseName);
					houseaddtype.setHAddress(HAddress);
					houseaddtype.setHArea(HArea);
					houseaddtype.setHPrice(HPrice);					
					houseaddtype.setHSurroud(HSurroud);
					houseaddtype.setHTraffic(HTraffic);					
					houseaddtype.setHCertificate(HCertificate);					
					houseaddtype.setHWay(HWay);
					
					houseaddtype.setHState(1);
					houseaddtype.setHBusiness(0);
					
					houseaddtype.setTId(TId);;
					houseaddtype.setTAir(TAir);
					houseaddtype.setTParking(TParking);
					houseaddtype.setTHall(THall);
					houseaddtype.setTBedroom(TBedroom);
					houseaddtype.setTKitchen(TKitchen);
					houseaddtype.setTToilet(TToilet);
					houseaddtype.setTHotWater(THotWater);
					houseaddtype.setTWifi(TWifi);
					houseaddtype.setTWaterElec(TWaterElec);
						
			      return HouseService.editandpublishhouse(OHid,houseaddtype, model,session);	
				}
				
		
}
