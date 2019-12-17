package com.bestbright.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.JoinType;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bestbright.Dto.StudentClassDTO;
import com.bestbright.Dto.SubjectDto;
import com.bestbright.models.Classes;
import com.bestbright.models.Student;
import com.bestbright.models.Subject;
	@Repository
public class SubjectDaoImp implements SubjectDao{
		@Autowired
		SessionFactory sessionFactory;
		public Session getCurrentSession(){
			return sessionFactory.getCurrentSession();
		}
		public void saveSubject(Subject sub) {
			// TODO Auto-generated method stub
			getCurrentSession().saveOrUpdate(sub);;
		}

		public List<Subject> getsubjectList() {
			// TODO Auto-generated method stub
			return getCurrentSession().createCriteria(Subject.class).list();
		}
		public List<SubjectDto> getSubjectListByClassId(Integer id) {
			// TODO Auto-generated method stub
			Criteria c=getCurrentSession().createCriteria(Subject.class)
					.createAlias("classes", "c",JoinType.LEFT_OUTER_JOIN);
			c.setProjection(Projections.projectionList()
					.add(Projections.property("id"), "id")
					.add(Projections.property("name"),"name"));
					
			c.add(Restrictions.eq("c.id",id));
			c.setResultTransformer(Transformers.aliasToBean(SubjectDto.class));
			return c.list();
		}
		public List<Classes> getClassesList() {
			// TODO Auto-generated method stub
			return getCurrentSession().createCriteria(Classes.class).list();
		}
		public void deleteSubject(Integer id) {
			// TODO Auto-generated method stub
			Subject subject=getCurrentSession().get(Subject.class, id);
			getCurrentSession().delete(subject);
		}
		public void updateSubject(Integer id) {
			// TODO Auto-generated method stub
			Subject subject=getCurrentSession().get(Subject.class, id);
			getCurrentSession().update(subject);
		}
		public SubjectDto getSubjectId(Integer id) {
			// TODO Auto-generated method stub
			Criteria c=getCurrentSession().createCriteria(Subject.class)
					.createAlias("classes", "c",JoinType.LEFT_OUTER_JOIN);
			c.setProjection(Projections.projectionList()
					.add(Projections.property("id"), "id")
					.add(Projections.property("name"),"name")
					.add(Projections.property("c.id"),"classes_id"));
					
			c.add(Restrictions.eq("id",id));
			c.setResultTransformer(Transformers.aliasToBean(SubjectDto.class));
			return (SubjectDto)c.uniqueResult();
		}
}
