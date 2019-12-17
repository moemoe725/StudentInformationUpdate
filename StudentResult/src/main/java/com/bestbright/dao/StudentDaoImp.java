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
import com.bestbright.Dto.StudentDto;
import com.bestbright.models.Classes;
import com.bestbright.models.Student;

@Repository
public class StudentDaoImp implements StudentDao {
	@Autowired
	SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void saveStudent(Student stu) {
		// TODO Auto-generated method stub
		getCurrentSession().saveOrUpdate(stu);
	}

	public List<Student> getStudentList() {
		// TODO Auto-generated method stub
		return getCurrentSession().createCriteria(Student.class).list();
	}

	public List<Classes> getClassesList() {
		// TODO Auto-generated method stub
		return getCurrentSession().createCriteria(Classes.class).list();
	}

	public List<StudentDto> getStudentListByClassId(Integer id) {
		// TODO Auto-generated method stub
		Criteria c = getCurrentSession().createCriteria(Student.class).createAlias("classes", "c",JoinType.LEFT_OUTER_JOIN);
		c.setProjection(Projections.projectionList()
				.add(Projections.property("id"), "id")
				.add(Projections.property("name"), "name")																													
				.add(Projections.property("pathName"), "pathName")
				.add(Projections.property("phNo"), "phNo")
				.add(Projections.property("address"), "address")
				.add(Projections.property("email"), "email")
				.add(Projections.property("c.id"), "classes_id"));
		c.add(Restrictions.eq("c.id", id));
		c.setResultTransformer(Transformers.aliasToBean(StudentDto.class));
		return c.list();
	}

	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		Student student = getCurrentSession().get(Student.class, id);
		getCurrentSession().delete(student);
	}

	public void updateStudent(Integer id) {
		// TODO Auto-generated method stub
		Student student = getCurrentSession().get(Student.class, id);
		getCurrentSession().update(student);
	}

	public StudentDto getStudentId(Integer id) {
		// TODO Auto-generated method stub
		Criteria c=getCurrentSession().createCriteria(Student.class)
				.createAlias("classes", "c",JoinType.LEFT_OUTER_JOIN);
				c.setProjection(Projections.projectionList()
				.add(Projections.property("id"), "id")
				.add(Projections.property("name"),"name")
				.add(Projections.property("pathName"),"pathName")
				.add(Projections.property("phNo"),"phNo")
				.add(Projections.property("address"),"address")
				.add(Projections.property("email"),"email")
				.add(Projections.property("c.id"),"classes_id")
				);
		c.add(Restrictions.eq("id",id));
		c.setResultTransformer(Transformers.aliasToBean(StudentDto.class));
		return (StudentDto)c.uniqueResult();
	}

}
