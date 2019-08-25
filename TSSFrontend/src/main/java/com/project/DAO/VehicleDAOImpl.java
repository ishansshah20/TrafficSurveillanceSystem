package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class VehicleDAOImpl implements VehicleDAO {


	@Autowired
	SessionFactory sessionFactory;
	
	public List searchVehicleCount(String date, String signalId) {
			List ls = new ArrayList();
			try {
				Session session = sessionFactory.getCurrentSession();
				Query q = session.createQuery("FROM VehicleVO WHERE signalId = '"+signalId+"' AND today_date = '"+date+"'");
				ls = q.list();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return ls;
		
	}
}
