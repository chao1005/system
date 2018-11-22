/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.mapper;

import java.util.List;
import java.util.Map;

import com.hyetec.uap.core.mapper.BaseMapper;
import com.hyetec.uap.wechat.model.User;
import com.hyetec.uap.wechat.vo.UserVo;

public interface UserMapper extends BaseMapper<User, UserVo> {
	
	int checkUserName(User user);
	
	User select(User user);

	List<User> selectAllcustomer(Map<String,Object> map);
	
	void updatePw(User user);
	
	int checkMobile(User user);
	
	User login(String login);
	
	User adminlogin(String name);
	
	List<User> selectAllUser();
	
	List<User> selectAllUserByname(User user);
}