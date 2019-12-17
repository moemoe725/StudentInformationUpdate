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

import com.bestbright.Dto.ExamResultDto;
import com.bestbright.Dto.MarkDto;
import com.bestbright.Dto.StudentDto;
import com.bestbright.models.Classes;
import com.bestbright.models.Mark;
import com.bestbright.models.Semister;
import com.bestbright.models.Student;
import com.bestbright.models.Subject;

@Repository
public class MarkDaoImp implements MarkDao{
	@Autowired
	SessionFactory sessionFactory;
	
	public Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	public void saveMark(Mark m) {
		// TODO Auto-generated method stub
		getCurrentSession().saveOrUpdate(m);
	}

	public List<Mark> getMarkList() {
		// TODO Auto-generated method stub
		return getCurrentSession().createCriteria(Mark.class).list();
	}
	public List<Student> getStudentListByClasses(Integer id) {
		// TODO Auto-generated method stub
		Criteria c=getCurrentSession().createCriteria(Student.class)
				.createAlias("classes", "c",JoinType.LEFT_OUTER_JOIN);
		c.add(Restrictions.eq("c.id",id));
		return c.list();
	}
	public List<Student> getStudentList() {
		// TODO Auto-generated method stub
		return getCurrentSession().createCriteria(Student.class).list();
	}
	public List<Classes> getClassesList() {
		// TODO Auto-generated method stub
		return getCurrentSession().createCriteria(Classes.class).list();
	}
	public List<Semister> getSemisterList() {
		// TODO Auto-generated method stub
		return getCurrentSession().createCriteria(Semister.class).list();
	}
	public List<Subject> getSubjectList() {
		// TODO Auto-generated method stub
		return getCurrentSession().createCriteria(Subject.class).list();
	}
	public List<Semister> getSemisterListBySubject(Integer id) {
		// TODO Auto-generated method stub
		Criteria c=getCurrentSession().createCriteria(Semister.class)
				.createAlias("subject","s",JoinType.LEFT_OUTER_JOIN);
		c.add(Restrictions.eq("s.id",id));
		return c.list();
	}
	public void deleteMark(Integer id) {
		// TODO Auto-generated method stub
		Mark mark=getCurrentSession().get(Mark.class, id);
		getCurrentSession().delete(mark);
	}
	public void updateMark(Integer id) {
		// TODO Auto-generated method stub
		Mark mark=getCurrentSession().get(Mark.class, id);
		getCurrentSession().update(mark);
	}
	public MarkDto getMarkId(Integer id) {
		// TODO Auto-generated method stub
			Criteria c=getCurrentSession().createCriteria(Mark.class)
					.createAlias("student", "stu",JoinType.LEFT_OUTER_JOIN)
					.createAlias("semister","sem",JoinType.LEFT_OUTER_JOIN)
					.createAlias("subject","sub",JoinType.LEFT_OUTER_JOIN);
					c.setProjection(Projections.projectionList()
					.add(Projections.property("id"), "id")
					.add(Projections.property("name"),"name")
					.add(Projections.property("giveMark"),"giveMark")
					.add(Projections.property("getMark"),"getMark")
					.add(Projections.property("stu.id"),"std_id")
					.add(Projections.property("sem.id"),"sub_id")
					.add(Projections.property("sub.id"),"sem_id")
					
					);
			c.add(Restrictions.eq("id",id));
			c.setResultTransformer(Transformers.aliasToBean(MarkDto.class));
			return (MarkDto)c.uniqueResult();
		
	}
	public List<ExamResultDto> markList() {
		// TODO Auto-generated method stub
		
		return null;
	}
	

}
