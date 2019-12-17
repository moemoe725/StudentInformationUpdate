package com.bestbright.models;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Student")
public class Student implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String name;
	private String pathName;
	private Integer phNo;
	private String address;
	private String email;
	@ManyToOne
	@JoinColumn(name="Classes_id")
	private Classes classes=new Classes();
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
	public Student() {
		super();
	}
	
	public Student(String name, String pathName, Classes classes) {
		super();
		this.name = name;
		this.pathName = pathName;
		this.classes = classes;
	}
	
	public Student(String name, String pathName) {
		super();
		this.name = name;
		this.pathName = pathName;
	}
	
	public Student(String name, String pathName, Integer phNo, String address, String email) {
		super();
		this.name = name;
		this.pathName = pathName;
		this.phNo = phNo;
		this.address = address;
		this.email = email;
		
	}
	public Classes getClasses() {
		return classes;
	}
	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	/*@OneToMany(mappedBy="student")
	private List<Mark> markList=new ArrayList<Mark>();
	public List<Mark> getMarkList() {
		return markList;
	}
	public void setMarkList(List<Mark> markList) {
		this.markList = markList;
	}
*/
	
}
