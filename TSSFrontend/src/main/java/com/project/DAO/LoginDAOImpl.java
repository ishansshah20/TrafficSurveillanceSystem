package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public void insertLogin(LoginVO loginVO){
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(loginVO);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}
	
	public List searchByName(String userName){
		List ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from LoginVO where username = '"+userName+"' ");
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}
	
	public List searchSignalDataForGraph(String date,String signalId)
	{	List ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from VehicleVO where signalId = '"+signalId+"' and today_date = '"+date+"' ");
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}
}
