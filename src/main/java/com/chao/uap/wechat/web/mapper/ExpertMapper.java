/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.mapper;

import java.util.List;

import com.hyetec.uap.core.mapper.BaseMapper;
import com.hyetec.uap.wechat.model.Expert;
import com.hyetec.uap.wechat.model.ExpertMsg;
import com.hyetec.uap.wechat.vo.ExpertVo;

public interface ExpertMapper extends BaseMapper<Expert, ExpertVo> {
	
	int delByPkId(Long pkId);
	
	ExpertMsg selectByUserId(Long userId);
	
	Expert selectExpertByUserId(Long userId);
	
	Expert selectById(Long userId);
	
	List<ExpertMsg> selectAllExpert();
	
	Expert selectExpert(Expert expert);
	
	Expert selectByUser(Long userId);
	
	int delByUserId(Long userId);
	
	List<Expert> selectByEnterprise(Long userId);
	
	List<Expert> selectAllTj();
}