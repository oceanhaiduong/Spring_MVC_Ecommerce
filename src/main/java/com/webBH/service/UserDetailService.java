package com.webBH.service;

import java.util.List;

import com.webBH.model.UserDetail;

public interface UserDetailService {
	public UserDetail getUserDetail(int id);
	public List<UserDetail> getAllUserDetail();
	public int addUserDetail(UserDetail userDetail);
	public int updateUserDetail(UserDetail userDetail);
	public int deleteUserDetail(int id);
}
