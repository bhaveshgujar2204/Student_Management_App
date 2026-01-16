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
	public String login(@ModelAttribute Student student){
		ss.savestudentdetails(student);
	
		return "redirect:/adminscreen";
	}
	
	@RequestMapping("/adminscreen")
	public String gotoAdmin(Model m) {
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
	@RequestMapping("/fees")
	public String updateFees(@RequestParam("StudentId") int StudentId, Model m) {
		 Student st =  ss.getsinglestudent(StudentId);
		 m.addAttribute("st",st);
		
		return "fees";
		
	}
	@RequestMapping("/payfees")
	public String payfees(@RequestParam("StudentId") int StudentId,@RequestParam("amount") int amount,Model m) {
		ss.updateStudentFees(StudentId,amount);
		List<Student> student=ss.getAllStudents();
		m.addAttribute("data",student);
		return "adminscreen";
		
	}
	@RequestMapping("/batch")
	public String batch(@RequestParam("StudentId") int StudentId, Model m) {
		 Student st =  ss.getsinglestudent(StudentId);
		 m.addAttribute("st",st);
		return "batchshift";
		
	}
	@RequestMapping("/batchshift")
	public String batchshift(@RequestParam("StudentId") int StudentId,@RequestParam("batchNumber") String batchNumber,@RequestParam("batchMode") String batchMode,Model m) {
		ss.updateStudentBatch(StudentId,batchNumber,batchMode);
		List<Student> student=ss.getAllStudents();
		m.addAttribute("data",student);
		return "adminscreen";

		
}     
	@RequestMapping("/pageing")
	public String pageing(@RequestParam("pageno") int pageno,Model m) {
		int pagesize=3;
	  List<Student> list=  ss.pagedata(pageno,pagesize);
	  m.addAttribute("data",list);
		return "adminscreen";
		
	}
}


