/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hyetec.uap.core.service.BaseService;
import com.hyetec.uap.wechat.model.Attachment;
import com.hyetec.uap.wechat.model.Roadshow;
import com.hyetec.uap.wechat.vo.RoadshowVo;

public interface RoadshowService extends BaseService<Roadshow, RoadshowVo> {

	void delByPkId(Long id, HttpServletRequest request);

	int checkName(String name, String id);

	void insertRoad(Roadshow roadshows, List<Attachment> attachmentsFile, Attachment attachmentVideo);

	void updateRoad(Roadshow roadshows, List<Attachment> attachmentsFile, Attachment attachmentVideo);

	List<Roadshow> selectAllw();

	void addPerson(Long id);

	List<Roadshow> selectAllwMy(Long userId);

	List<Roadshow> selectStatistics(RoadshowVo roadshowVo);
	
	List<Roadshow> selectAllTj();
}