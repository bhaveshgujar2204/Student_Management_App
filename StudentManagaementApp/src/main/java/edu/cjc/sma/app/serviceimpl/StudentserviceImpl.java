package edu.cjc.sma.app.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.repository.StudentRepository;
import edu.cjc.sma.app.servicei.StudentService;
@Service
public class StudentserviceImpl implements StudentService {
	@Autowired 
	StudentRepository sr;

	@Override
	public void savestudentdetails(Student stu) {
		sr.save(stu);
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Student> getAllStudents() {
		
		return sr.findAll();
	}

	@Override
	public List<Student> searchStudentByBatch(String batchNumber, String batchMode) {
		List<Student> student=sr.findAllByBatchNumberAndBatchMode(batchNumber,batchMode);
		return student;
	}

	@Override
	public void deletStudentData(int StudentId) {
		sr.deleteById(StudentId);
		
	}
	

}
