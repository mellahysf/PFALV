package ma.ensao.hibernateDAO;

import java.util.ArrayList;
import java.util.List;

import ma.ensao.util.HibernateUtil;

import org.hibernate.HibernateException;
import org.hibernate.query.Query;
import org.hibernate.Session;

public class VilleDAO {
	Session session;
	public List selectAllVilles(){
		List<Villes> list=new ArrayList();
		try{
			session=setSession();
			session.beginTransaction();
			Query<Villes> query=session.createQuery("From Villes");
			list=query.list();
			session.getTransaction().commit();
		}catch(HibernateException he){
			if(session.getTransaction()!=null){
				session.getTransaction().rollback();
			}
			he.printStackTrace();
			
		}finally{
			if(session!=null){
				session.close();
			}
		}
		return list;
	}
	
	private Session setSession(){
		Session session=(Session) HibernateUtil.getSessionFactory();
		return session;
	}
}
