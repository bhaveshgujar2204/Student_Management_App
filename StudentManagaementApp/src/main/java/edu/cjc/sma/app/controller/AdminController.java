package edu.cjc.sma.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.servicei.StudentService;

@Controller
public class AdminController {
	@Autowired
	StudentService ss;
	@RequestMapping("/")
	public String preLogin(){
		return "login";
		
	}
	@RequestMapping("/login")
	public String onLogin(@RequestParam("username") String username, @RequestParam("password") String password , Model m) {
		if(username.equals("admin") && password.equals("admin"))
		{
			List<Student> students=ss.getAllStudents();
			m.addAttribute("data",students);
     		return "adminscreen";
		}
		else {
			m.addAttribute("login_fail","Enter valid username and password");
			return "login";
		}
		
		
			
		}
	@RequestMapping("/enroll_student")	
	public String login(@ModelAttribute Student student, Model m){
		ss.savestudentdetails(student);
		List<Student> students=ss.getAllStudents();
		m.addAttribute("data",students);
		return "adminscreen";
	}
	@RequestMapping("/search")
	public String getbatchstudent(@RequestParam("batchNumber") String batchNumber, @RequestParam("batchMode") String batchMode, Model m) {
		List<Student> result=ss.searchStudentByBatch(batchNumber,batchMode);
		if(result.size()>0) {
			m.addAttribute("data",result);
		}
		else {
			List<Student> student=ss.getAllStudents();
			m.addAttribute("data",student);
			m.addAttribute("message", "No records are available for the batch' "+batchNumber+"'....!");
			}
		return "adminscreen";
		
	}
	@RequestMapping("/delete")
	public String deletestudent(@RequestParam("StudentId") int StudentId,Model m) {
		ss.deletStudentData(StudentId);
		List<Student> student=ss.getAllStudents();
		m.addAttribute("data",student);
		return "adminscreen";
		
	}

		
	}


