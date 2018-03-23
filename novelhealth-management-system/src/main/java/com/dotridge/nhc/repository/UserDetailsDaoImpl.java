package com.dotridge.nhc.repository;

import javax.persistence.EntityManagerFactory;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dotridge.nhc.entity.UserProfile;

@Repository("userDao")
public class UserDetailsDaoImpl implements UserDetailsDao {

	@Autowired
	private EntityManagerFactory entityManagerFactory;

	public UserProfile getUserDetials(String name) {
		Query query = entityManagerFactory.unwrap(SessionFactory.class).openSession().createQuery(" from UserProfile profile where profile.userName=:userName");
		query.setParameter("userName", name);
		//query.setCacheable(true);
		UserProfile userProfile = (UserProfile) query.uniqueResult();
		return userProfile;

	}

}
