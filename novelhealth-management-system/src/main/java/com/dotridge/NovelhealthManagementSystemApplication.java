package com.dotridge;
import javax.persistence.EntityManagerFactory;
import org.hibernate.SessionFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class NovelhealthManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(NovelhealthManagementSystemApplication.class, args);
	}

	@Bean
	public HibernateTransactionManager getTransactionManager(EntityManagerFactory entityManagerFactory) {
		return new HibernateTransactionManager(entityManagerFactory.unwrap(SessionFactory.class));
	}
}
