package com.project.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ComplainVO;

@Repository
public class ComplaintDAOImp implements ComplaintDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void insertComplaint(ComplainVO complaintVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complaintVO);
	}
	
	@Override
	public List viewComplaint() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query q = session.createQuery("from ComplainVO where status = true ");
		List complaintList = q.list();
		
		return complaintList;	
	}
	
	@Override
	public List searchComplaint(ComplainVO complaintVO) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query q = session.createQuery("from ComplainVO where id = '"+complaintVO.getComplainId()+"'");
		List complaintList = q.list();
		return complaintList;
	}
	
	@Override
	public List seeComplaint(ComplainVO complaintVO) {
		Session session = sessionFactory.getCurrentSession();
		
		Query q = session.createQuery("from ComplainVO where loginVO.loginId = '"+complaintVO.getLoginVO().getLoginId()+"'");
		List complainList = q.list();
		return complainList;
	   }
}
