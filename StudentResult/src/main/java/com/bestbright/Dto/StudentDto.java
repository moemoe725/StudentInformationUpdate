package com.bestbright.Dto;

import org.springframework.web.multipart.MultipartFile;

public class StudentDto {
	private Integer id;
	private String name;
	private Integer classes_id;
	private String pathName;
	private Integer phNo;
	private String address;
	private String email;
	private MultipartFile file;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getClasses_id() {
		return classes_id;
	}
	public void setClasses_id(Integer classes_id) {
		this.classes_id = classes_id;
	}
	
	public String getPathName() {
		return pathName;
	}
	public void setPathName(String pathName) {
		this.pathName = pathName;
	}
	
	public Integer getPhNo() {
		return phNo;
	}
	public void setPhNo(Integer phNo) {
		this.phNo = phNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public StudentDto() {
		super();
	}
	public StudentDto(String name, Integer classes_id, String pathName, MultipartFile file) {
		super();
		this.name = name;
		this.classes_id = classes_id;
		this.pathName = pathName;
		this.file = file;
	}
	
	
}
