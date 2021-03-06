/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.model;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.hyetec.uap.core.model.IdLong;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Scheduling extends IdLong {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.pk_id
     *
     * @hyetec
     */
    private Long pkId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.expert_id
     *
     * @hyetec
     */
    private Long expertId;
    
    private String expertName;
    
    

	private String expertLevel;
	
	private String expertCategory;
	
	private String expertDaf;
	
	private String expertUrl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.advice_date
     *
     * @hyetec
     */
	@JSONField(format="yyyy-MM-dd")
	@DateTimeFormat(pattern="yyyy-MM-dd")
    private Date adviceDate;

    public String getExpertCategory() {
		return expertCategory;
	}

	public void setExpertCategory(String expertCategory) {
		this.expertCategory = expertCategory;
	}

	public String getExpertDaf() {
		return expertDaf;
	}

	public void setExpertDaf(String expertDaf) {
		this.expertDaf = expertDaf;
	}

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.start_time
     *
     * @hyetec
     */
    private String startTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.end_time
     *
     * @hyetec
     */
    private String endTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.capacity
     *
     * @hyetec
     */
    private Integer capacity;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.remark
     *
     * @hyetec
     */
    private String remark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.status
     *
     * @hyetec
     */
    private Integer status;
    
    private Integer dafEnd;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column f_scheduling.create_time
     *
     * @hyetec
     */
    private Date createTime;
    
    private String orderTime;
    
    private List<Scheduling> schedulings;
    
    private String year;
    
    private Long userId;
    
    private ExpertMsg expertMsg;
    
    private Long orderId;
 
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column f_scheduling.pk_id
     *
     * @return the value of f_scheduling.pk_id
     *
     * @hyetec
     */
    
    public String getExpertName() {
		return expertName;
	}

	public Integer getDafEnd() {
		return dafEnd;
	}

	public void setDafEnd(Integer dafEnd) {
		this.dafEnd = dafEnd;
	}

	public String getExpertUrl() {
		return expertUrl;
	}

	public void setExpertUrl(String expertUrl) {
		this.expertUrl = expertUrl;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public List<Scheduling> getSchedulings() {
		return schedulings;
	}

	public void setSchedulings(List<Scheduling> schedulings) {
		this.schedulings = schedulings;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public void setExpertName(String expertName) {
		this.expertName = expertName;
	}

	public String getExpertLevel() {
		return expertLevel;
	}

	public void setExpertLevel(String expertLevel) {
		this.expertLevel = expertLevel;
	}
    public Long getPkId() {
        return pkId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column f_scheduling.pk_id
     *
     * @param pkId the value for f_scheduling.pk_id
     *
     * @hyetec
     */
    public void setPkId(Long pkId) {
        this.pkId = pkId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column f_scheduling.expert_id
     *
     * @return the value of f_scheduling.expert_id
     *
     * @hyetec
     */
    public Long getExpertId() {
        return expertId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column f_scheduling.expert_id
     *
     * @param expertId the value for f_scheduling.expert_id
     *
     * @hyetec
     */
    public void setExpertId(Long expertId) {
        this.expertId = expertId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column f_scheduling.advice_date
     *
     * @return the value of f_scheduling.advice_date
     *
     * @hyetec
     */
    public Date getAdviceDate() {
        return adviceDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column f_scheduling.advice_date
     *
     * @param adviceDate the value for f_scheduling.advice_date
     *
     * @hyetec
     */
    public void setAdviceDate(Date adviceDate) {
        this.adviceDate = adviceDate;
    }


    public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column f_scheduling.capacity
     *
     * @return the value of f_scheduling.capacity
     *
     * @hyetec
     */
    public Integer getCapacity() {
        return capacity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column f_scheduling.capacity
     *
     * @param capacity the value for f_scheduling.capacity
     *
     * @hyetec
     */
    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column f_scheduling.remark
     *
     * @return the value of f_scheduling.remark
     *
     * @hyetec
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column f_scheduling.remark
     *
     * @param remark the value for f_scheduling.remark
     *
     * @hyetec
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column f_scheduling.status
     *
     * @return the value of f_scheduling.status
     *
     * @hyetec
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column f_scheduling.status
     *
     * @param status the value for f_scheduling.status
     *
     * @hyetec
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column f_scheduling.create_time
     *
     * @return the value of f_scheduling.create_time
     *
     * @hyetec
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column f_scheduling.create_time
     *
     * @param createTime the value for f_scheduling.create_time
     *
     * @hyetec
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_scheduling
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
        Scheduling other = (Scheduling) that;
        return (this.getPkId() == null ? other.getPkId() == null : this.getPkId().equals(other.getPkId()))
            && (this.getExpertId() == null ? other.getExpertId() == null : this.getExpertId().equals(other.getExpertId()))
            && (this.getAdviceDate() == null ? other.getAdviceDate() == null : this.getAdviceDate().equals(other.getAdviceDate()))
            && (this.getStartTime() == null ? other.getStartTime() == null : this.getStartTime().equals(other.getStartTime()))
            && (this.getEndTime() == null ? other.getEndTime() == null : this.getEndTime().equals(other.getEndTime()))
            && (this.getCapacity() == null ? other.getCapacity() == null : this.getCapacity().equals(other.getCapacity()))
            && (this.getRemark() == null ? other.getRemark() == null : this.getRemark().equals(other.getRemark()))
            && (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
            && (this.getCreateTime() == null ? other.getCreateTime() == null : this.getCreateTime().equals(other.getCreateTime()));
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_scheduling
     *
     * @hyetec
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getPkId() == null) ? 0 : getPkId().hashCode());
        result = prime * result + ((getExpertId() == null) ? 0 : getExpertId().hashCode());
        result = prime * result + ((getAdviceDate() == null) ? 0 : getAdviceDate().hashCode());
        result = prime * result + ((getStartTime() == null) ? 0 : getStartTime().hashCode());
        result = prime * result + ((getEndTime() == null) ? 0 : getEndTime().hashCode());
        result = prime * result + ((getCapacity() == null) ? 0 : getCapacity().hashCode());
        result = prime * result + ((getRemark() == null) ? 0 : getRemark().hashCode());
        result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
        result = prime * result + ((getCreateTime() == null) ? 0 : getCreateTime().hashCode());
        return result;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_scheduling
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
        sb.append(", expertId=").append(expertId);
        sb.append(", adviceDate=").append(adviceDate);
        sb.append(", startTime=").append(startTime);
        sb.append(", endTime=").append(endTime);
        sb.append(", capacity=").append(capacity);
        sb.append(", remark=").append(remark);
        sb.append(", status=").append(status);
        sb.append(", createTime=").append(createTime);
        sb.append("]");
        return sb.toString();
    }

	public ExpertMsg getExpertMsg() {
		return expertMsg;
	}

	public void setExpertMsg(ExpertMsg expertMsg) {
		this.expertMsg = expertMsg;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
}