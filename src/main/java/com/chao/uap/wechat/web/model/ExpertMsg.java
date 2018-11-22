package com.hyetec.uap.wechat.model;

import java.io.Serializable;
import java.util.Date;


public class ExpertMsg implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3328038045878969746L;
	private Long expertId;
	private String expertName;
	private String expertCompany;
	private String expertlevel;
	private String expertUrl;
	private Date startTime;
	private Long chatRoomId;
	private Long orderId;

	public Long getExpertId() {
		return expertId;
	}

	public void setExpertId(Long expertId) {
		this.expertId = expertId;
	}

	public String getExpertName() {
		return expertName;
	}

	public void setExpertName(String expertName) {
		this.expertName = expertName;
	}

	public String getExpertCompany() {
		return expertCompany;
	}

	public void setExpertCompany(String expertCompany) {
		this.expertCompany = expertCompany;
	}

	public String getExpertlevel() {
		return expertlevel;
	}

	public void setExpertlevel(String expertlevel) {
		this.expertlevel = expertlevel;
	}

	public String getExpertUrl() {
		return expertUrl;
	}

	public void setExpertUrl(String expertUrl) {
		this.expertUrl = expertUrl;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Long getChatRoomId() {
		return chatRoomId;
	}

	public void setChatRoomId(Long chatRoomId) {
		this.chatRoomId = chatRoomId;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

}
