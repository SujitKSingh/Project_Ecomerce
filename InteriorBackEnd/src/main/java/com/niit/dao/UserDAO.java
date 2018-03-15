package com.niit.dao;

import java.util.List;

import com.niit.model.User;

public interface UserDAO
{
  public boolean registerUser(User user);
  public boolean updateDetail(User user);
  public List<User> getAllUser();
 
}