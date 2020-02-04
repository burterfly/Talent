package com.oracle.ysyj.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.oracle.ysyj.model.House;
import com.oracle.ysyj.model.HouseAddType;


public interface HouseService {
	//显示所有房源信息
	public String listAllHouse(Integer SId,HttpSession session);
	//显示未审核/未发布房源信息
	public String listnotauditedHouse(Integer SId,HttpSession session);
	//显示已发布房源信息
	public String PublishedHouse(Integer SId,HttpSession session);	
	//未审核房源详情信息
	public String Notauditeddetail(Integer OHid,House house,Model model,HttpSession session);
	//查询房源
	public String selectHouse(Integer OHid,Integer SId,Integer HState,House house,Model model,HttpSession session);
	//查询房源2
	public String selectHousetwo(Integer OHid,Integer SId,House house,Model model,HttpSession session);
	//查询房源3
	public String selectHousethree(Integer OHid,Integer SId,House house,Model model,HttpSession session);
	//删除未审核房源
	public String delhouser(Integer OHid,House house,Model model,HttpSession session);
	//发布房源
	public String addhouseself(HouseAddType houseaddtype,Model model);
	
	//跳转到发布房源
	public String topublishhouse();
	//跳转到审核页面
	public String edithouse(Integer OHid,HttpSession session);
	//提交已经审核的页面
	public String editandpublishhouse(Integer OHid,HouseAddType houseaddtype,Model model,HttpSession session);
}
