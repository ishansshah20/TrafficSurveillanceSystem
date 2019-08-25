package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AreaVO;


@Repository
public class AreaDAOImpl implements AreaDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public void insertArea(AreaVO areaVO){
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(areaVO);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}
	
	public List searchArea(){
		List ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from AreaVO where status = true");
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}
	
	public List editArea(AreaVO areaVO){
		List ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from AreaVO where areaId = " + areaVO.getAreaId());
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}
	
	
}
