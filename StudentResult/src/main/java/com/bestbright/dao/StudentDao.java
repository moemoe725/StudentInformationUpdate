package com.bestbright.dao;

import java.util.List;


import com.bestbright.Dto.StudentDto;
import com.bestbright.models.Classes;
import com.bestbright.models.Student;

public interface StudentDao {
	void saveStudent(Student stu);
	List<Student> getStudentList();
	List<Classes> getClassesList();
	public List<StudentDto> getStudentListByClassId(Integer id);
	void deleteStudent(Integer id);
	void updateStudent(Integer id);
	StudentDto getStudentId(Integer id);
}
