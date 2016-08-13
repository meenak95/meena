package com.niit.jewellery.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate3.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellery.dao.CategoryDAO;
import com.niit.jewellery.dao.CategoryDAOImpl;
import com.niit.jewellery.dao.ProductDAO;
import com.niit.jewellery.dao.ProductDAOImpl;
import com.niit.jewellery.dao.SupplierDAO;
import com.niit.jewellery.dao.SupplierDAOImpl;
import com.niit.jewellery.dao.UserDAO;
import com.niit.jewellery.dao.UserDAOImpl;
import com.niit.jewellery.model.Category;
import com.niit.jewellery.model.Product;
import com.niit.jewellery.model.Supplier;
import com.niit.jewellery.model.User;


@Configuration
@ComponentScan("com.niit.jewellery")
@EnableTransactionManagement


public class ApplicationContextConfig {
	

	
 	
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");

		dataSource.setUsername("sa");
		dataSource.setPassword("");
		return dataSource;
	}
    
   
    
    private Properties getHibernateProperties() {
    	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
     	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
    	return properties;
    }
    
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addAnnotatedClass(Category.class);
    	sessionBuilder.addAnnotatedClass(Supplier.class);
    	sessionBuilder.addAnnotatedClass(Product.class);
    	sessionBuilder.addAnnotatedClass(User.class);
      	return sessionBuilder.buildSessionFactory();
    }
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
    
   


	
	
	  @Autowired
	    @Bean(name = "categoryDao")
	    public CategoryDAO getCategoryDao(SessionFactory sessionFactory) {
	    	return new CategoryDAOImpl(sessionFactory);
	    }
		
	  @Autowired
	    @Bean(name = "supplierDao")
	    public SupplierDAO getSupplierDao(SessionFactory sessionFactory) {
	    	return new SupplierDAOImpl(sessionFactory);
	    }
		
	  @Autowired
	    @Bean(name = "productDao")
	    public ProductDAO getProductDao(SessionFactory sessionFactory) {
	    	return new ProductDAOImpl(sessionFactory);
	    }
	  @Autowired
	    @Bean(name = "userDao")
	    public UserDAO getUserDao(SessionFactory sessionFactory) {
	    	return new UserDAOImpl(sessionFactory);
	    }
		
		
}
