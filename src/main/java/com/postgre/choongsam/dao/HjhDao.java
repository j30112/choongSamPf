package com.postgre.choongsam.dao;

import java.util.List;
import java.util.Map;

import com.postgre.choongsam.dto.Login_Info;
import com.postgre.choongsam.dto.User_Info;


public interface HjhDao {

	List<User_Info> teastdlist(Map<String, Object> params);

	int totaluser(String keyword);

	User_Info detailProfile(String user_id);

	int userProfile1(User_Info info);

	List<User_Info> profileupdate(String user_id);

	User_Info detailProfileuser(String userId);

	int deleteStd1(String user_id, String password);

	Login_Info getLoginInfo(String user_id);



}
