package com.bestbright.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestbright.Dto.MarkDto;
import com.bestbright.dao.MarkDao;
import com.bestbright.models.Classes;
import com.bestbright.models.Mark;
import com.bestbright.models.Semister;
import com.bestbright.models.Student;
import com.bestbright.models.Subject;


@Service
@Transactional
public class MarkServiceImp implements MarkService{
	@Autowired
	MarkDao markDao;

	public void saveMark(MarkDto markDto) {
		// TODO Auto-generated method stub
		Mark mark=new Mark();
		if(markDto.getId()!=0){
			mark.setId(markDto.getId());
		}
		mark.setName(markDto.getName());
		mark.getStudent().setId(markDto.getStd_id());
		//mark.getStudent().getClasses().setId(markDto.getClasses_id());
		mark.getSemister().setId(markDto.getSem_id());
		mark.getSubject().setId(markDto.getSub_id());
		mark.setGetMark(markDto.getGetMark());
		mark.setGiveMark(markDto.getGiveMark());
		markDao.saveMark(mark);
	}

	public List<Mark> getMarkList() {
		// TODO Auto-generated method stub
		return markDao.getMarkList();
	}

	public List<Student> getStudentListByClasses(Integer id) {
		// TODO Auto-generated method stub
		return markDao.getStudentListByClasses(id);
	}

	public List<Student> getStudentList() {
		// TODO Auto-generated method stub
		return markDao.getStudentList();
	}

	public List<Classes> getClassesList() {
		// TODO Auto-generated method stub
		return markDao.getClassesList();
	}

	public List<Semister> getSemisterList() {
		// TODO Auto-generated method stub
		return markDao.getSemisterList();
	}

	public List<Subject> getSubjectList() {
		// TODO Auto-generated method stub
		return markDao.getSubjectList();
	}

	public void deleteMark(Integer id) {
		// TODO Auto-generated method stub
		markDao.deleteMark(id);
	}

	public void updateMark(Integer id) {
		// TODO Auto-generated method stub
		markDao.updateMark(id);
	}

	public MarkDto getMarkId(Integer id) {
		// TODO Auto-generated method stub
		return markDao.getMarkId(id);
	}

	/*@Override
	public List<Semister> getSemisterListBySubject(Integer id) {
		// TODO Auto-generated method stub
		return markDao.getSemisterListBySubject(id);
	}*/
	
}
