/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.model;

import java.util.Date;

import com.hyetec.uap.core.model.IdLong;

public class Roadshow extends IdLong {
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.pk_id
	 *
	 * @hyetec
	 */
	private Long pkId;
	private Long chatroomid;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.name
	 *
	 * @hyetec
	 */
	private String name;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.brief
	 *
	 * @hyetec
	 */
	private String brief;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.content
	 *
	 * @hyetec
	 */
	private String content;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.body
	 *
	 * @hyetec
	 */
	private Long body;

	private String bodyName;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.validate_code
	 *
	 * @hyetec
	 */
	private String validateCode;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.video
	 *
	 * @hyetec
	 */
	private String video;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.aduitor_status
	 *
	 * @hyetec
	 */
	private Long aduitorStatus;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.start_time
	 *
	 * @hyetec
	 */
	private Date startTime;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.start_time
	 *
	 * @hyetec
	 */
	private Date endTime;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.status
	 *
	 * @hyetec
	 */
	private Integer status;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.creator
	 *
	 * @hyetec
	 */
	private Long creator;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column
	 * f_roadshow.create_time
	 *
	 * @hyetec
	 */
	private Date createTime;

	private String enterpriseName;

	private String enterpriseImg;

	private Integer chatNum;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.pk_id
	 *
	 * @return the value of f_roadshow.pk_id
	 *
	 * @hyetec
	 */

	public Long getPkId() {
		return pkId;
	}

	public String getEnterpriseImg() {
		return enterpriseImg;
	}

	public void setEnterpriseImg(String enterpriseImg) {
		this.enterpriseImg = enterpriseImg;
	}

	public String getEnterpriseName() {
		return enterpriseName;
	}

	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.pk_id
	 *
	 * @param pkId
	 *            the value for f_roadshow.pk_id
	 *
	 * @hyetec
	 */
	public void setPkId(Long pkId) {
		this.pkId = pkId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.name
	 *
	 * @return the value of f_roadshow.name
	 *
	 * @hyetec
	 */
	public String getName() {
		return name;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.name
	 *
	 * @param name
	 *            the value for f_roadshow.name
	 *
	 * @hyetec
	 */
	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getBodyName() {
		return bodyName;
	}

	public void setBodyName(String bodyName) {
		this.bodyName = bodyName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.brief
	 *
	 * @return the value of f_roadshow.brief
	 *
	 * @hyetec
	 */
	public String getBrief() {
		return brief;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.brief
	 *
	 * @param brief
	 *            the value for f_roadshow.brief
	 *
	 * @hyetec
	 */
	public void setBrief(String brief) {
		this.brief = brief == null ? null : brief.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.content
	 *
	 * @return the value of f_roadshow.content
	 *
	 * @hyetec
	 */
	public String getContent() {
		return content;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.content
	 *
	 * @param content
	 *            the value for f_roadshow.content
	 *
	 * @hyetec
	 */
	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.body
	 *
	 * @return the value of f_roadshow.body
	 *
	 * @hyetec
	 */
	public Long getBody() {
		return body;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.body
	 *
	 * @param body
	 *            the value for f_roadshow.body
	 *
	 * @hyetec
	 */
	public void setBody(Long body) {
		this.body = body;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.validate_code
	 *
	 * @return the value of f_roadshow.validate_code
	 *
	 * @hyetec
	 */
	public String getValidateCode() {
		return validateCode;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.validate_code
	 *
	 * @param validateCode
	 *            the value for f_roadshow.validate_code
	 *
	 * @hyetec
	 */
	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode == null ? null : validateCode.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.video
	 *
	 * @return the value of f_roadshow.video
	 *
	 * @hyetec
	 */
	public String getVideo() {
		return video;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.video
	 *
	 * @param video
	 *            the value for f_roadshow.video
	 *
	 * @hyetec
	 */
	public void setVideo(String video) {
		this.video = video == null ? null : video.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.aduitor_status
	 *
	 * @return the value of f_roadshow.aduitor_status
	 *
	 * @hyetec
	 */
	public Long getAduitorStatus() {
		return aduitorStatus;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.aduitor_status
	 *
	 * @param aduitorStatus
	 *            the value for f_roadshow.aduitor_status
	 *
	 * @hyetec
	 */
	public void setAduitorStatus(Long aduitorStatus) {
		this.aduitorStatus = aduitorStatus;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.start_time
	 *
	 * @return the value of f_roadshow.start_time
	 *
	 * @hyetec
	 */
	public Date getStartTime() {
		return startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.start_time
	 *
	 * @param startTime
	 *            the value for f_roadshow.start_time
	 *
	 * @hyetec
	 */
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.status
	 *
	 * @return the value of f_roadshow.status
	 *
	 * @hyetec
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.status
	 *
	 * @param status
	 *            the value for f_roadshow.status
	 *
	 * @hyetec
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.creator
	 *
	 * @return the value of f_roadshow.creator
	 *
	 * @hyetec
	 */
	public Long getCreator() {
		return creator;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.creator
	 *
	 * @param creator
	 *            the value for f_roadshow.creator
	 *
	 * @hyetec
	 */
	public void setCreator(Long creator) {
		this.creator = creator;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database
	 * column f_roadshow.create_time
	 *
	 * @return the value of f_roadshow.create_time
	 *
	 * @hyetec
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database
	 * column f_roadshow.create_time
	 *
	 * @param createTime
	 *            the value for f_roadshow.create_time
	 *
	 * @hyetec
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Long getChatroomid() {
		return chatroomid;
	}

	public void setChatroomid(Long chatroomid) {
		this.chatroomid = chatroomid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table
	 * f_roadshow
	 *
	 * @hyetec
	 */
	@Override
	public boolean equals(Object that) {
		if (this == that) {
			return true;
		}
		if (that == null) {
			return false;
		}
		if (getClass() != that.getClass()) {
			return false;
		}
		Roadshow other = (Roadshow) that;
		return (this.getPkId() == null ? other.getPkId() == null : this.getPkId().equals(other.getPkId()))
				&& (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
				&& (this.getBrief() == null ? other.getBrief() == null : this.getBrief().equals(other.getBrief()))
				&& (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()))
				&& (this.getBody() == null ? other.getBody() == null : this.getBody().equals(other.getBody()))
				&& (this.getValidateCode() == null ? other.getValidateCode() == null : this.getValidateCode().equals(other.getValidateCode()))
				&& (this.getVideo() == null ? other.getVideo() == null : this.getVideo().equals(other.getVideo()))
				&& (this.getAduitorStatus() == null ? other.getAduitorStatus() == null : this.getAduitorStatus().equals(other.getAduitorStatus()))
				&& (this.getStartTime() == null ? other.getStartTime() == null : this.getStartTime().equals(other.getStartTime()))
				&& (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
				&& (this.getCreator() == null ? other.getCreator() == null : this.getCreator().equals(other.getCreator()))
				&& (this.getChatroomid() == null ? other.getChatroomid() == null : this.getChatroomid().equals(other.getChatroomid()))
				&& (this.getCreateTime() == null ? other.getCreateTime() == null : this.getCreateTime().equals(other.getCreateTime()));
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table
	 * f_roadshow
	 *
	 * @hyetec
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((getPkId() == null) ? 0 : getPkId().hashCode());
		result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
		result = prime * result + ((getBrief() == null) ? 0 : getBrief().hashCode());
		result = prime * result + ((getContent() == null) ? 0 : getContent().hashCode());
		result = prime * result + ((getBody() == null) ? 0 : getBody().hashCode());
		result = prime * result + ((getValidateCode() == null) ? 0 : getValidateCode().hashCode());
		result = prime * result + ((getVideo() == null) ? 0 : getVideo().hashCode());
		result = prime * result + ((getAduitorStatus() == null) ? 0 : getAduitorStatus().hashCode());
		result = prime * result + ((getStartTime() == null) ? 0 : getStartTime().hashCode());
		result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
		result = prime * result + ((getCreator() == null) ? 0 : getCreator().hashCode());
		result = prime * result + ((getChatroomid() == null) ? 0 : getChatroomid().hashCode());
		result = prime * result + ((getCreateTime() == null) ? 0 : getCreateTime().hashCode());
		return result;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table
	 * f_roadshow
	 *
	 * @hyetec
	 */
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(getClass().getSimpleName());
		sb.append(" [");
		sb.append("Hash = ").append(hashCode());
		sb.append(", pkId=").append(pkId);
		sb.append(", name=").append(name);
		sb.append(", brief=").append(brief);
		sb.append(", content=").append(content);
		sb.append(", body=").append(body);
		sb.append(", validateCode=").append(validateCode);
		sb.append(", video=").append(video);
		sb.append(", aduitorStatus=").append(aduitorStatus);
		sb.append(", startTime=").append(startTime);
		sb.append(", status=").append(status);
		sb.append(", creator=").append(creator);
		sb.append(", createTime=").append(createTime);
		sb.append(", chatroomid=").append(chatroomid);
		sb.append("]");
		return sb.toString();
	}

	public Integer getChatNum() {
		return chatNum;
	}

	public void setChatNum(Integer chatNum) {
		this.chatNum = chatNum;
	}
}