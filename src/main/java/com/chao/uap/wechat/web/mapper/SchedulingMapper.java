/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.mapper;

import java.util.Date;
import java.util.List;

import com.hyetec.uap.core.mapper.BaseMapper;
import com.hyetec.uap.wechat.model.Scheduling;
import com.hyetec.uap.wechat.vo.SchedulingVo;

public interface SchedulingMapper extends BaseMapper<Scheduling, SchedulingVo> {

	List<Scheduling> selectByDate(Date adviceDate);

	@Override
	int deleteByPrimaryKey(Long pkId);

	Scheduling selectByExpertId(Long expertId);

	List<Scheduling> selectByUserId(Scheduling scheduling);

	List<Scheduling> selectByAdviceDate(Scheduling scheduling);

	void delByPkId(Long pkId);

	List<Scheduling> selectYear(Long userId);

	List<Scheduling> selectExpertByDate(Scheduling scheduling);

	List<Scheduling> selectByCurrent(Long userId);

	List<Scheduling> selectExpertByNowDate(Scheduling scheduling);

	void updateEndByPkId(Scheduling scheduling);
}