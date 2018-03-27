package com.dotridge.nhc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dotridge.nhc.model.AdminBean;
import com.dotridge.nhc.repository.AdminDao;
import com.dotridge.nhc.util.AdminServiceUtils;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	@Override
	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.READ_COMMITTED)
	public AdminBean addAdmin(AdminBean adminBean) {
		return  AdminServiceUtils.mapAdminDomainToAdminBean(adminDao.addAdmin(AdminServiceUtils.mapAdminBeanToAdminDomain(adminBean),adminBean.getHospitalId()));
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.READ_COMMITTED)
	public AdminBean updateAdmin(AdminBean adminBean) {
		return  AdminServiceUtils.mapAdminDomainToAdminBean(adminDao.updateAdmin(AdminServiceUtils.mapAdminBeanToAdminDomain(adminBean)));
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.READ_COMMITTED)
	public AdminBean getAdminById(int adminId) {
		return AdminServiceUtils.mapAdminDomainToAdminBean(adminDao.getAdminById(adminId));
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.READ_COMMITTED)
	public void deleteAdmin(int adminId) {

	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.READ_COMMITTED)
	public List<AdminBean> getAllAdmins() {
		return AdminServiceUtils.mapAdminDomainsToAdminBeans(adminDao.getAllAdmins());
	}

}
