/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.mapper;

import java.util.List;

import com.hyetec.uap.core.mapper.BaseMapper;
import com.hyetec.uap.wechat.model.Roadshow;
import com.hyetec.uap.wechat.vo.RoadshowVo;

public interface RoadshowMapper extends BaseMapper<Roadshow, RoadshowVo> {

	void delByPkId(Long id);

	int checkName(Roadshow roadshow);

	List<Roadshow> selectAllw();

	List<Roadshow> selectAllwMy(Long userId);

	List<Roadshow> selectStatistics(RoadshowVo roadshowVo);
	
	List<Roadshow> selectAllTj();
}