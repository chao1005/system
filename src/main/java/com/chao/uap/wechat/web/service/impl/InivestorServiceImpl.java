/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.service.impl;

import com.google.common.collect.Lists;
import com.hyetec.uap.core.service.impl.BaseServiceImpl;
import com.hyetec.uap.core.web.JsonResponse;
import com.hyetec.uap.wechat.mapper.InivestorMapper;
import com.hyetec.uap.wechat.mapper.IntentionMapper;
import com.hyetec.uap.wechat.model.Inivestor;
import com.hyetec.uap.wechat.model.Intention;
import com.hyetec.uap.wechat.model.User;
import com.hyetec.uap.wechat.service.InivestorService;
import com.hyetec.uap.wechat.util.UserUtils;
import com.hyetec.uap.wechat.vo.AdviceVo;
import com.hyetec.uap.wechat.vo.AttachmentVo;
import com.hyetec.uap.wechat.vo.ChatRoomPersonVo;
import com.hyetec.uap.wechat.vo.ChatRoomRecordVo;
import com.hyetec.uap.wechat.vo.ChatRoomVo;
import com.hyetec.uap.wechat.vo.DictionaryVo;
import com.hyetec.uap.wechat.vo.EnterpriseVo;
import com.hyetec.uap.wechat.vo.EvaluateVo;
import com.hyetec.uap.wechat.vo.ExpertVo;
import com.hyetec.uap.wechat.vo.InivestorVo;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InivestorServiceImpl extends BaseServiceImpl<Inivestor, InivestorVo> implements InivestorService {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table f_inivestor
     *
     * @hyetec
     */
    private InivestorMapper inivestorMapper;
    @Autowired
    private IntentionMapper intentionMapper;
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_inivestor
     *
     * @hyetec
     */
    public InivestorMapper getInivestorMapper() {
        return  ( InivestorMapper) baseMapper;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_inivestor
     *
     * @hyetec
     */
    @Autowired
    public void setInivestorMapper(InivestorMapper inivestorMapper) throws Exception {
        super.setBaseMapper(inivestorMapper);
        this.inivestorMapper=inivestorMapper;
    }

	@Override
	public void delByPkId(Long id) {
		inivestorMapper.delByPkId(id);
		intentionMapper.delByInivestorId(id);
		
	}

	@Override
	public void insertEnterprise(Inivestor inivestorr, List<Intention> intentions) {
		User user = UserUtils.getUser();
		inivestorr.setCreateTime(new Date());
		inivestorr.setStatus(0);
		inivestorr.setUserId(user.getPkId());
		inivestorMapper.insertSelective(inivestorr);
		for (Intention intention : intentions) {
			intention.setCreateTime(new Date());
			intention.setInivestorId(inivestorr.getPkId());
			intention.setUserId(user.getPkId());
			intentionMapper.insertSelective(intention);
		}
		
	}

	@Override
	public void updateEnterprise(Inivestor inivestorr, List<Intention> intentions) {
		inivestorMapper.updateByPrimaryKeySelective(inivestorr);
		intentionMapper.delByInivestorId(inivestorr.getPkId());
		User user = UserUtils.getUser();
		for (Intention intention : intentions) {
			intention.setCreateTime(new Date());
			intention.setInivestorId(inivestorr.getPkId());
			intention.setUserId(user.getPkId());
			intentionMapper.insertSelective(intention);
		}
		
	}

	@Override
	public Inivestor findByUserId(Long userId) {
		// TODO Auto-generated method stub
		
		Inivestor inivestor = inivestorMapper.selectInivestorByUserId(userId);
		
		return inivestor;
	}

	@Override
	public Inivestor selectByUserId(Long userId) {
		// TODO Auto-generated method stub
		return inivestorMapper.selectByUserId(userId);
	}
}