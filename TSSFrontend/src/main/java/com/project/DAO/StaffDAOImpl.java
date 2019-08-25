package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.StaffVO;
@Repository
public class StaffDAOImpl implements StaffDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void insertStaff(StaffVO staffVO){
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(staffVO);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}
	
	public List searchStaff(){
		List ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from StaffVO where status = true");
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}
	
	public void blockStaff(int id){
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("update LoginVO set enabled=0 where loginId='"+id+"' ");
			q.executeUpdate();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		
	}
	
	public void unblockStaff(int id){
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("update LoginVO set enabled=1 where loginId='"+id+"' ");
			q.executeUpdate();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
}
