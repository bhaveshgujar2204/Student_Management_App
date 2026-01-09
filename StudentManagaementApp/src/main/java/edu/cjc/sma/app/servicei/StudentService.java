package edu.cjc.sma.app.servicei;

import java.util.List;

import edu.cjc.sma.app.model.Student;

public interface StudentService {


	public void savestudentdetails(Student stu);
	public List<Student> getAllStudents();
	public List<Student> searchStudentByBatch(String batchNumber, String batchMode);
	public void deletStudentData(int StudentId);
	

}
