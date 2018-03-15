package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.CartItem;
import com.niit.model.User;


@Repository("userDAO")
public  class UserDAOImpl implements UserDAO
{
@Autowired
SessionFactory sessionFactory;

@Transactional

public boolean registerUser(User user)

{
		try {
		sessionFactory.getCurrentSession().save(user);
		return true;
		}
		catch(Exception ex) {
		ex.printStackTrace();
		return false;
		}
}

@Transactional
public boolean updateDetail(User user)
{
		try {
		sessionFactory.getCurrentSession().update(user);
		return true;
		}
		catch(Exception ex) {
		ex.printStackTrace();
		return false;
}


}

@SuppressWarnings("unchecked")
@Override
public List<User> getAllUser() {
	Session session=sessionFactory.openSession();
	
	List<User> listusers=session.createQuery("from User").list();
	return listusers;
	
}
}