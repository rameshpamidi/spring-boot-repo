package com.dotridge.nhc.repository;

import java.util.List;

import javax.persistence.EntityManagerFactory;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dotridge.nhc.entity.Admin;
import com.dotridge.nhc.entity.Hospital;

@Repository("adminDao")
public class AdminDaoImpl  implements AdminDao {

	@Autowired
	private EntityManagerFactory entityManagerFactory;

	@Override
	public Admin addAdmin(Admin admin,final int hospitalId) {

		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		Hospital hospital=(Hospital)session.load(Hospital.class, hospitalId);
		admin.setHospital(hospital);
		session.save(admin);
		return admin;
	}

	@Override
	public Admin updateAdmin(Admin admin) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		session.update(admin);
		return admin;
	}

	@Override
	public void deleteAdmin(int adminId) {
		Session session =entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();;
		session.update(adminId);
	}

	@Override
	public Admin getAdminById(int adminId) {
		return (Admin) entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession().get(Admin.class, adminId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> getAllAdmins() {
		return entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession().createQuery("from Admin").list();
	}

}
