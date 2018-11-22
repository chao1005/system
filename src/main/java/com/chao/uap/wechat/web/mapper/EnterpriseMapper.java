/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.mapper;

import java.util.List;

import com.hyetec.uap.core.mapper.BaseMapper;
import com.hyetec.uap.wechat.model.Enterprise;
import com.hyetec.uap.wechat.vo.EnterpriseVo;

public interface EnterpriseMapper extends BaseMapper<Enterprise, EnterpriseVo> {
	
	int delByPkId(Long pkId);
	
	int delByUserId(Long userId);
	
	List<Enterprise> selectAllEnterprise();
	
	List<Enterprise> selectByEnterprise(String id);
	
	List<Enterprise> selectAllEnterpriseByname(String name);
	
	Enterprise selectEnterpriseByUserId(Long userId);
	
	Enterprise selectByUserId(Long userId);
	
	List<Enterprise> selectAllTj();
}