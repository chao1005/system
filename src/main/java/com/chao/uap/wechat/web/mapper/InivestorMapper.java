/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.mapper;

import com.hyetec.uap.core.mapper.BaseMapper;
import com.hyetec.uap.wechat.model.Inivestor;
import com.hyetec.uap.wechat.vo.InivestorVo;

public interface InivestorMapper extends BaseMapper<Inivestor, InivestorVo> {
	void delByPkId (Long pkId);
	
	void delByUserId (Long userId);
	
	Inivestor selectInivestorByUserId(Long userId);

	Inivestor selectByInivestorId(Long userId);

	Inivestor selectByUserId(Long userId);
}