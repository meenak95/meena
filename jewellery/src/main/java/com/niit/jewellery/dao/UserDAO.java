package com.niit.jewellery.dao;

import java.util.List;

import com.niit.jewellery.model.User;



public interface UserDAO {


	public List<User> list();

	public User get(String id);
	
	public void saveOrUpdate(User user);

	public void delete(String id);



}
