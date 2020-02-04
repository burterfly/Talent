package com.oracle.ysyj.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.oracle.ysyj.model.House;
import com.oracle.ysyj.model.HouseAddType;


public interface HouseService {
	//��ʾ���з�Դ��Ϣ
	public String listAllHouse(Integer SId,HttpSession session);
	//��ʾδ���/δ������Դ��Ϣ
	public String listnotauditedHouse(Integer SId,HttpSession session);
	//��ʾ�ѷ�����Դ��Ϣ
	public String PublishedHouse(Integer SId,HttpSession session);	
	//δ��˷�Դ������Ϣ
	public String Notauditeddetail(Integer OHid,House house,Model model,HttpSession session);
	//��ѯ��Դ
	public String selectHouse(Integer OHid,Integer SId,Integer HState,House house,Model model,HttpSession session);
	//��ѯ��Դ2
	public String selectHousetwo(Integer OHid,Integer SId,House house,Model model,HttpSession session);
	//��ѯ��Դ3
	public String selectHousethree(Integer OHid,Integer SId,House house,Model model,HttpSession session);
	//ɾ��δ��˷�Դ
	public String delhouser(Integer OHid,House house,Model model,HttpSession session);
	//������Դ
	public String addhouseself(HouseAddType houseaddtype,Model model);
	
	//��ת��������Դ
	public String topublishhouse();
	//��ת�����ҳ��
	public String edithouse(Integer OHid,HttpSession session);
	//�ύ�Ѿ���˵�ҳ��
	public String editandpublishhouse(Integer OHid,HouseAddType houseaddtype,Model model,HttpSession session);
}
