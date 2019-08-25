package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.FeedbackVO;

@Repository
public class FeedbackDAOImpl implements FeedbackDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	

	public void insertFeedback(FeedbackVO feedbackVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(feedbackVO);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List viewFeedback(FeedbackVO feedbackVO) {
		List ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from FeedbackVO where loginVO.loginId = '" + feedbackVO.getLoginVO().getLoginId() + "'");
			ls = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;

	}

	public List seeFeedback() {
		List ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from FeedbackVO where status=true");
			ls = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;

	}
	
	public void updateFeedback(FeedbackVO feedbackVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q=session.createQuery("update FeedbackVO set status=false where feedbackId= '"+feedbackVO.getFeedbackId()+"'");
			q.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
}
