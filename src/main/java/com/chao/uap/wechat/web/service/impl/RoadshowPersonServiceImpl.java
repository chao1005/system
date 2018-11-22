/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.service.impl;

import com.google.common.collect.Lists;
import com.hyetec.uap.core.service.impl.BaseServiceImpl;
import com.hyetec.uap.core.web.JsonResponse;
import com.hyetec.uap.wechat.mapper.RoadshowPersonMapper;
import com.hyetec.uap.wechat.model.RoadshowPerson;
import com.hyetec.uap.wechat.service.RoadshowPersonService;
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
import com.hyetec.uap.wechat.vo.IntentionVo;
import com.hyetec.uap.wechat.vo.MessageBoardVo;
import com.hyetec.uap.wechat.vo.OrderVo;
import com.hyetec.uap.wechat.vo.RoadshowDiscussionVo;
import com.hyetec.uap.wechat.vo.RoadshowPersonVo;
import com.hyetec.uap.wechat.vo.RoadshowVo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoadshowPersonServiceImpl extends BaseServiceImpl<RoadshowPerson, RoadshowPersonVo> implements RoadshowPersonService {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table f_roadshow_person
     *
     * @hyetec
     */
    private RoadshowPersonMapper roadshowPersonMapper;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_roadshow_person
     *
     * @hyetec
     */
    public RoadshowPersonMapper getRoadshowPersonMapper() {
        return  ( RoadshowPersonMapper) baseMapper;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_roadshow_person
     *
     * @hyetec
     */
    @Autowired
    public void setRoadshowPersonMapper(RoadshowPersonMapper roadshowPersonMapper) throws Exception {
        super.setBaseMapper(roadshowPersonMapper);
        this.roadshowPersonMapper=roadshowPersonMapper;
    }
}