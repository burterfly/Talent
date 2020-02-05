package com.oracle.rcpq.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.oracle.rcpq.model.Talent;

@Repository("TalentMapper")
@Mapper
public interface TalentMapper {
	//显示所有房源
	  public List<Talent> listAllTalent();
}
