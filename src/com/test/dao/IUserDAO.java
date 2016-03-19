package com.test.dao;

import java.util.List;

import com.test.domain.User;

public interface IUserDAO {
	
	/**
	 * ��½
	 * */
	boolean login(String account,String password);
	
	/**
	 * ע��
	 * */
	boolean regist(User user);
	
	/**
	 * �г����л�Ա����Ϣ
	 * */
	List<User> listAllUser();
	
	/**
	 * ɾ��ĳ����Ա
	 * */
	boolean deleteUser(String account);
	
	/**
	 * ��Ϊ����Ա
	 * */
	boolean setAttendant(String account);
	
	/**
	 * �ָ���ͨ��Ա
	 * */
	boolean setNormalUser(String account);
	
	/**
	 * �޸�����
	 * */
	boolean updatePassword(String account,String newPassword);
	
	/**
	 * �޸ĸ�����Ϣ
	 * */
	boolean updateUserInfo(User user);
}
