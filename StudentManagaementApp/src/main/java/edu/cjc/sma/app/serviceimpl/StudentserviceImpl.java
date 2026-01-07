package edu.cjc.sma.app.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.repository.StudentRepository;
import edu.cjc.sma.app.servicei.StudentService;
@Service
public class StudentserviceImpl implements StudentService {
	@Autowired 
	StudentRepository r;

	@Override
	public void savestudentdetails(Student stu) {
		r.save(stu);
		// TODO Auto-generated method stub
		
	}

}
