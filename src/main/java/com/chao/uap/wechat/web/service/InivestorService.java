/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.service;

import com.hyetec.uap.core.service.BaseService;
import com.hyetec.uap.wechat.model.Inivestor;
import com.hyetec.uap.wechat.model.Intention;
import com.hyetec.uap.wechat.vo.InivestorVo;
import java.util.List;

public interface InivestorService extends BaseService<Inivestor, InivestorVo> {

	void delByPkId(Long id);

	void insertEnterprise(Inivestor inivestorr, List<Intention> intentions);

	void updateEnterprise(Inivestor inivestorr, List<Intention> intentions);
	
	Inivestor selectByUserId(Long userId);
	
	Inivestor findByUserId(Long userId);
}