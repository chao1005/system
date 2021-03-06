/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.vo;

import com.hyetec.uap.core.mybatis.plugin.Pagination;
import com.hyetec.uap.wechat.model.RoadshowPerson;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RoadshowPersonVo extends Pagination<RoadshowPerson> {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table f_roadshow_person
     *
     * @hyetec
     */
    private static Logger logger = LoggerFactory.getLogger(RoadshowPersonVo.class);

    private RoadshowPerson roadshowPerson;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_roadshow_person
     *
     * @hyetec
     */
    public RoadshowPerson getRoadshowPerson() {
        return roadshowPerson;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table f_roadshow_person
     *
     * @hyetec
     */
    public void setRoadshowPerson(RoadshowPerson roadshowPerson) {
        this.roadshowPerson=roadshowPerson;
    }
}