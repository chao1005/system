/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.service;

import com.hyetec.uap.core.service.BaseService;
import com.hyetec.uap.core.web.JsonResponse;
import com.hyetec.uap.wechat.model.Advice;
import com.hyetec.uap.wechat.model.Enterprise;
import com.hyetec.uap.wechat.vo.EnterpriseVo;
import java.util.List;

public interface EnterpriseService extends BaseService<Enterprise, EnterpriseVo> {

	void insertEnterprise(Enterprise enterprise, List<Advice> advice);

	void updateEnterprise(Enterprise enterprises, List<Advice> advice);
	
	void delByPkId(Long pkId);
	
	List<Enterprise> selectAllEnterprise();

	String selectBody(Long body);
	
	List<Enterprise> selectAllEnterpriseByname(String name);
	
	Enterprise findByUserId(Long userId);
	
	Enterprise selectByUserId(Long userId);
	
	List<Enterprise> selectAllTj();

}