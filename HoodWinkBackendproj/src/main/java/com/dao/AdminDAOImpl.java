package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Admin;


@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public AdminDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Admin> adminlist() {
		@SuppressWarnings("unchecked")
		List<Admin> list = (List<Admin>) sessionFactory.getCurrentSession().createCriteria(Admin.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public void adminSaveOrUpdate(Admin admin) {
		sessionFactory.getCurrentSession().saveOrUpdate(admin);
	}

	/*
	 * @Transactional public void saveOrUpdate(User userDetails) {
	 * sessionFactory.getCurrentSession().saveOrUpdate(userDetails); }
	 */

	@Transactional
	public void adminDelete(String adminname) {
		Admin admin=new Admin();
		admin.setAdminname(adminname);
		sessionFactory.getCurrentSession().delete(adminname);
	}

	@Transactional
	public Admin get(String adminname) {
		String hql = "from Admin where adminname=" + adminname;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Admin> list = (List<Admin>) query.list();

		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}

	@Transactional
	public boolean isValidAdmin(String adminname, String password) {
		System.out.println("dao impl admin");
		String hql = "from Admin where adminname= '" + adminname + "' and " + " password ='" + password + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Admin> list = (List<Admin>) query.list();

		if (list != null && !list.isEmpty()) {
			return true;
		}

		return false;
	}

}
