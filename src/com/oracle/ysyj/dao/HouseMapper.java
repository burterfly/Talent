package com.oracle.ysyj.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.oracle.ysyj.model.House;
import com.oracle.ysyj.model.HouseAddType;


@Repository("HouseMapper")
@Mapper
public interface HouseMapper {
	//显示所有房源
	  public List<House> listAllHouse(Integer Sid);
	  
   //显示未审核/未发布房源  
	  public List<House> listnotauditedHouse(Integer Sid);
	  
	  //显示已发布房源  
	  public List<House> PublishedHouse(Integer Sid);
	  
	  //显示未审核房源 	
	  public HouseAddType Notauditeddetail(Integer OHid);
	  	
	  //查询房源	
	  public List<House> selectHouse(Map<String, Object> map); 
	  //查询房源2
      public List<House> selectHousetwo(Map<String, Object> map);
      //查询房源3
      public List<House> selectHousethree(Map<String, Object> map); 
     
      //删除未审核房源  没有用到
      public List<House>  delhouser(Integer OHid); 
      //删除type
      public List<House>  deltype(Integer TId); 
       
      //发布房源type
      public HouseAddType addhouseself3(HouseAddType houseaddtype);
      
      //拿到Tid
      public int addhouseself2();
      
      //拿到OHid
      public int addhouseself4();
      
      //发布房源house
      public HouseAddType addhouseself(HouseAddType houseaddtype);
     
      //更新房源house
      public int updatehouse(HouseAddType houseaddtype);
      
      //更新房源type
      public int updatetype(HouseAddType houseaddtype);
}
