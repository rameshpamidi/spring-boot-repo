package com.iconma.repository;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.dotridge.NovelhealthManagementSystemApplication;
import com.dotridge.nhc.entity.Hospital;
import com.dotridge.nhc.repository.HospitalDao;

@ActiveProfiles("test")
@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes={NovelhealthManagementSystemApplication.class})
public class HospitalDaoTest {

	@Autowired
	private HospitalDao hospitalDao;

	@Test
	public void addHospitalTest() {
		Hospital hospital = new Hospital();
		hospital.setHospitalName("kims");
		hospital.setWebsiteUrl("www.kims.com");
		Hospital hospital2 = hospitalDao.addHospital(hospital);
		Assert.assertNotNull(hospital2);
		hospital.setHospitalId(hospital2.getHospitalId());
		Assert.assertEquals(hospital, hospital2);
	}

	@Test
	public void updateHospitalTest() {
		Hospital hospital =new Hospital();
		hospital.setHospitalId(1);
		hospital.setHospitalName("nims");
		hospital.setWebsiteUrl("www.kims.com");
		 Hospital updateHospital = hospitalDao.updateHospital(hospital);
		Assert.assertNotNull(updateHospital);
		Assert.assertEquals(hospital,updateHospital);
	}

}
