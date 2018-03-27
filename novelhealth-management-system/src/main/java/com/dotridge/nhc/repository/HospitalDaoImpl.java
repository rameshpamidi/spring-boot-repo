package com.dotridge.nhc.repository;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManagerFactory;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dotridge.nhc.entity.Hospital;
import com.dotridge.nhc.entity.HospitalBranch;

/**
 * The Class HospitalDaoImpl.
 */
@Repository("hospitalDao")
@Transactional
public class HospitalDaoImpl implements HospitalDao {

	/** The session factory. */
	@Autowired
	private EntityManagerFactory entityManagerFactory;
	List<HospitalBranch> hospitalBranches = new ArrayList<HospitalBranch>();

	@Override
	public Hospital addHospital(Hospital hospital) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		session.save(hospital);
		System.out.println(hospital);
		return hospital;
	}

	@Override
	public HospitalBranch addHospitalBranch(HospitalBranch branch, final int hospId) {

		hospitalBranches.add(branch);
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		Hospital hospital = (Hospital) session.get(Hospital.class, hospId);
		hospital.getBranches().add(branch);
		session.update(hospital);
		return branch;
	}

	@Override
	public Hospital updateHospital(Hospital hospital) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		session.update(hospital);
		System.out.println(hospital);
		return hospital;
	}

	@Override
	public HospitalBranch updateHospitalBranch(HospitalBranch branch) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		session.update(branch);
		return branch;

	}

	@Override
	public void deleteHospital(int hospitalId) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		session.delete(session.get(Hospital.class, hospitalId));
	}

	@Override
	public void deleteHospitalBranch(int branchId, int hospId) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		Hospital hospital = (Hospital) session.get(Hospital.class, hospId);
		List<HospitalBranch> branches = hospital.getBranches();
		for (Iterator<HospitalBranch> iterator = branches.iterator(); iterator.hasNext();) {
			HospitalBranch hospitalBranch = iterator.next();
			if (hospitalBranch.getBranchId() == branchId) {
				iterator.remove();
			}
		}
		hospital.setBranches(branches);
		session.update(hospital);

	}

	@Override
	public Hospital getHospitalById(int hospId) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		Hospital hospital = (Hospital) session.load(Hospital.class, hospId);
		System.out.println(hospital);

		return hospital;
	}

	@Override
	public HospitalBranch getBranchById(int branchId) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		HospitalBranch hospitalBranch = (HospitalBranch) session.get(HospitalBranch.class, branchId);

		return hospitalBranch;
	}

	@Override
	public List<HospitalBranch> getAllBranches(final int hospitalId) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		SQLQuery query = session.createSQLQuery(
				"select hb.*,b.* from hospital_branch hb inner join branch b on hb.branch_id_fk=b.branch_id where hb.hospital_id_fk=:hospitalId");
		query.setParameter("hospitalId", hospitalId);
		// query.setCacheable(true);
		query.addEntity(HospitalBranch.class);
		@SuppressWarnings("unchecked")
		List<HospitalBranch> branches = query.list();
		return branches;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Hospital> getAllHospitals() {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		Query query = session.createQuery("from Hospital");
		// query.setCacheable(true);
		List<Hospital> hospitals = query.list();
		return hospitals;
	}

	@Override
	public void updateHospitalStatus(final int hospId) {
		Session session = entityManagerFactory.unwrap(SessionFactory.class).getCurrentSession();
		Hospital hospital = (Hospital) session.get(Hospital.class, hospId);
		if (hospital.isStatus() == false) {
			hospital.setStatus(true);
			session.update(hospital);
		} else {
			hospital.setStatus(false);
			session.update(hospital);
		}
	}

}
