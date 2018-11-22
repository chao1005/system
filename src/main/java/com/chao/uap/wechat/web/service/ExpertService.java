/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.service;

import com.hyetec.uap.core.service.BaseService;
import com.hyetec.uap.core.web.JsonResponse;
import com.hyetec.uap.wechat.model.Advice;
import com.hyetec.uap.wechat.model.Expert;
import com.hyetec.uap.wechat.model.ExpertMsg;
import com.hyetec.uap.wechat.vo.ExpertVo;
import java.util.List;

public interface ExpertService extends BaseService<Expert, ExpertVo> {
	
	void delByPkId(Long pkId);
	
	ExpertMsg selectByUserId(Long userId);
	
	Expert findByUserId(Long userId);
	
	Expert selectById(Long userId);
	
	Expert selectExpert(Expert expert);
	
	Expert selectByUser(Long userId);
	
	List<Expert> selectByEnterprise(Long userId);
	
	List<Expert> expertEvaluationStatistics(List<Expert> experts);
	
	List<Expert> selectAllTj();
}