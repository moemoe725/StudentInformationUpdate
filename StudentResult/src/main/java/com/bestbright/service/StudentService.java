package com.bestbright.service;

import java.util.List;


import com.bestbright.Dto.StudentDto;
import com.bestbright.models.Classes;
import com.bestbright.models.Student;

public interface StudentService {
	void saveStudent(StudentDto stuDto);
	List<Student> getStudentList();
	List<Classes> getClassesList();
	List<StudentDto> getStudentListByClassId(Integer id);
	void deleteStudent(Integer id);
	void updateStudent(Integer id);
	StudentDto getStudentId(Integer id);
}
