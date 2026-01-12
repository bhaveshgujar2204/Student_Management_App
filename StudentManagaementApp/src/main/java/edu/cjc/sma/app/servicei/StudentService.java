package edu.cjc.sma.app.servicei;

import java.util.List;

import edu.cjc.sma.app.model.Student;

public interface StudentService {


	public void savestudentdetails(Student stu);
	public List<Student> getAllStudents();
	public List<Student> searchStudentByBatch(String batchNumber, String batchMode);
	public void deletStudentData(int StudentId);
	public Student getsinglestudent(int studentId);
	public void updateStudentFees(int StudentId, int amount);
	public void updateStudentBatch(int StudentId, String batchNumber, String batchMode);
	

}
