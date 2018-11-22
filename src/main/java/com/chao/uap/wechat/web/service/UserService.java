/*******************************************************************************
* Copyright (c) 2017 by Hyetec  Corporation all right reserved.
* 2017年11月20日 11:09
* 
*******************************************************************************/
package com.hyetec.uap.wechat.service;

import com.hyetec.uap.core.service.BaseService;
import com.hyetec.uap.core.web.JsonResponse;
import com.hyetec.uap.wechat.model.Attachment;
import com.hyetec.uap.wechat.model.Enterprise;
import com.hyetec.uap.wechat.model.Inivestor;
import com.hyetec.uap.wechat.model.Roadshow;
import com.hyetec.uap.wechat.model.User;
import com.hyetec.uap.wechat.vo.UserVo;
import java.util.List;

public interface UserService extends BaseService<User, UserVo> {
	
	int checkUserName(String userName,String id);
	
	int checkMobile(String mobile,String id);

	void updateUser(User user, Attachment attachment);

	void delUser(Long id);
	
	User login(String loginName);
	
	List<User> selectAllcustomer(String category,String myuserid);
	
	void changePw(User user);
	
	User findUser(User user);

	Boolean chechAdminLogin(User users);
	
	User adminlogin(String loginName);
	
	List<User> selectAllUser();
	
	List<User> selectAllUserByname(User user);
	
	void insertEnterprise(User user,Enterprise enterprise);
	
	void insertInivestor(User user,Inivestor inivestor);

	void insertUser(String user, String order);

	void updateUser(String user, String order);

	void insertUser(User user, Attachment attachment);

	void updateUser(String user, String order, String orderList, String category);

	void insertUser(String user, String order, String orderList, String category);
}