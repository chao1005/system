/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.mapper;

import com.hyetec.uap.core.mapper.BaseMapper;
import com.hyetec.uap.wechat.model.RoadshowPerson;
import com.hyetec.uap.wechat.vo.RoadshowPersonVo;

public interface RoadshowPersonMapper extends BaseMapper<RoadshowPerson, RoadshowPersonVo> {
	
	int selectFat(RoadshowPerson roadshowPerson);
	
}