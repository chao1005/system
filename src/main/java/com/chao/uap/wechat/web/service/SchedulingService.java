/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.service;

import java.util.Date;
import java.util.List;

import com.hyetec.uap.core.service.BaseService;
import com.hyetec.uap.wechat.model.Scheduling;
import com.hyetec.uap.wechat.vo.SchedulingVo;

public interface SchedulingService extends BaseService<Scheduling, SchedulingVo> {
	List<Scheduling> selectByDate(Date adviceDate);

	void delByPkId(Long pkId);

	Scheduling selectByExpertId(Long expertId);

	List<Scheduling> selectByUserId(Long userId);

	void updateEndByPkId(Long pkId);

}