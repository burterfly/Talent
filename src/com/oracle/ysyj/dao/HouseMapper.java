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
	//��ʾ���з�Դ
	  public List<House> listAllHouse(Integer Sid);
	  
   //��ʾδ���/δ������Դ  
	  public List<House> listnotauditedHouse(Integer Sid);
	  
	  //��ʾ�ѷ�����Դ  
	  public List<House> PublishedHouse(Integer Sid);
	  
	  //��ʾδ��˷�Դ 	
	  public HouseAddType Notauditeddetail(Integer OHid);
	  	
	  //��ѯ��Դ	
	  public List<House> selectHouse(Map<String, Object> map); 
	  //��ѯ��Դ2
      public List<House> selectHousetwo(Map<String, Object> map);
      //��ѯ��Դ3
      public List<House> selectHousethree(Map<String, Object> map); 
     
      //ɾ��δ��˷�Դ  û���õ�
      public List<House>  delhouser(Integer OHid); 
      //ɾ��type
      public List<House>  deltype(Integer TId); 
       
      //������Դtype
      public HouseAddType addhouseself3(HouseAddType houseaddtype);
      
      //�õ�Tid
      public int addhouseself2();
      
      //�õ�OHid
      public int addhouseself4();
      
      //������Դhouse
      public HouseAddType addhouseself(HouseAddType houseaddtype);
     
      //���·�Դhouse
      public int updatehouse(HouseAddType houseaddtype);
      
      //���·�Դtype
      public int updatetype(HouseAddType houseaddtype);
}
