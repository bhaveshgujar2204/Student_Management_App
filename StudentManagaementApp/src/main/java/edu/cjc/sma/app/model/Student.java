package edu.cjc.sma.app.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int StudentId;
	private String studentFullName;
	private String studentEmail;
	private int studentAge;
	private String studentCollegeName;
	private String StudentCourse;
	private String batchNumber;
	private String batchMode;
	private int feesPaid;
	
	public int getStudentAge() {
		return studentAge;
	}
	public void setStudentAge(int studentAge) {
		this.studentAge = studentAge;
	}
	public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		StudentId = studentId;
	}
	public String getStudentFullName() {
		return studentFullName;
	}
	public void setStudentFullName(String studentFullName) {
		this.studentFullName = studentFullName;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}
	
	public String getStudentCollegeName() {
		return studentCollegeName;
	}
	public void setStudentCollegeName(String studentCollegeName) {
		this.studentCollegeName = studentCollegeName;
	}
	public String getStudentCourse() {
		return StudentCourse;
	}
	public void setStudentCourse(String studentCourse) {
		StudentCourse = studentCourse;
	}
	public String getBatchNumber() {
		return batchNumber;
	}
	public void setBatchNumber(String batchNumber) {
		this.batchNumber = batchNumber;
	}
	public String getBatchMode() {
		return batchMode;
	}
	public void setBatchMode(String batchMode) {
		this.batchMode = batchMode;
	}
	public int getFeesPaid() {
		return feesPaid;
	}
	public void setFeesPaid(int feesPaid) {
		this.feesPaid = feesPaid;
	}
	
	
	
	

}
