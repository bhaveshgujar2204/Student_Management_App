package edu.cjc.sma.app.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
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

	@Override
	public Student getsinglestudent(int studentId) {
		Optional<Student> op=sr.findById(studentId);
		return op.get();
	}

	@Override
	public void updateStudentFees(int StudentId, int amount) {
		Optional<Student> opStudent=sr.findById(StudentId);
		Student st=opStudent.get();
		st.setFeesPaid(st.getFeesPaid()+amount);
		sr.save(st);
		
	}

	@Override
	public void updateStudentBatch(int StudentId, String batchNumber, String batchMode) {
		Optional<Student> opst=sr.findById(StudentId);
		Student st=opst.get();
		st.setBatchNumber(batchNumber);
		//st.setBatchMode(batchMode);
		sr.save(st);
		
	}

	@Override
	public List<Student> pagedata(int pageno, int pagesize) {
	PageRequest p=	PageRequest.of(pageno,pagesize);
	List<Student> list=sr.findAll(p).getContent();
		return list;
	}
	
	

}
