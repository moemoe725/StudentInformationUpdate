package com.bestbright.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.bestbright.Dto.StudentDto;
import com.bestbright.dao.StudentDao;
import com.bestbright.models.Classes;
import com.bestbright.models.Student;
@Transactional
@Service
public class StudentServiceImp implements StudentService{
	@Autowired
	ServletContext servletContext;
	@Autowired
	StudentDao studentDao;
	public String UPLOAD_DIRECTORY="/images";
	public void saveStudent(StudentDto stuDto)  {
		// TODO Auto-generated method stub
		Student stu=new Student();
		if(stuDto.getId()!=null && stuDto.getId()!=0){
			stu.setId(stuDto.getId());
		}
		
		String path=servletContext.getRealPath(UPLOAD_DIRECTORY);
		String filename=stuDto.getFile().getOriginalFilename();
		try {
			byte[] bytes=stuDto.getFile().getBytes();
			BufferedOutputStream stream=new BufferedOutputStream(new FileOutputStream(new File(path+ File.separator + filename)));
			stream.write(bytes);
			 stream.flush();
			stream.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
			/*
			 * Student stu=new
			 * Student(stuDto.getName(),filename,stuDto.getPhNo(),stuDto.getAddress(),stuDto
			 * .getEmail());
			 */
		stu.setName(stuDto.getName());
		stu.setPathName(filename);
		stu.setPhNo(stuDto.getPhNo());
		stu.setAddress(stuDto.getAddress());
		stu.setEmail(stuDto.getEmail());
		stu.getClasses().setId(stuDto.getClasses_id());
		studentDao.saveStudent(stu);
		
	}

	public List<Student> getStudentList() {
		// TODO Auto-generated method stub
		return studentDao.getStudentList();
	}

	public List<Classes> getClassesList() {
		// TODO Auto-generated method stub
		return studentDao.getClassesList();
	}

	public List<StudentDto> getStudentListByClassId(Integer id) {
		// TODO Auto-generated method stub
		return studentDao.getStudentListByClassId(id);
	}

	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		studentDao.deleteStudent(id);
	}

	public void updateStudent(Integer id) {
		// TODO Auto-generated method stub
		studentDao.updateStudent(id);
	}

	public StudentDto getStudentId(Integer id) {
		// TODO Auto-generated method stub
		return studentDao.getStudentId(id);
	}

}
