package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.model.Supplier;
@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	private SessionFactory sessionFactory;


	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) sessionFactory.getCurrentSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}
	/*@Transactional
	public void update(Supplier supplier) {
		sessionFactory.getCurrentSession().update(supplier);
	}*/
	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	@Transactional
	public void delete(String supplierid) {
		Supplier supplier = new Supplier();
		supplier.setSupplierid(supplierid);
		sessionFactory.getCurrentSession().delete(supplier);
	}

	@Transactional
	public Supplier get(String supplierid) {
		try {
			String hql = "from Supplier where supplierid=" + "'"+supplierid+"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<Supplier> list = (List<Supplier>) query.list();
			
			if (list != null && !list.isEmpty()) {
				return list.get(0);
			}
			
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Transactional
	public Supplier getByName(String name) {
		String hql = "from Supplier where name=" + "'"+ name+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}


}
