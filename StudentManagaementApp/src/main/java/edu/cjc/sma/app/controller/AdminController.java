package edu.cjc.sma.app.controller;

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
			return "adminscreen";
		}
		else {
			m.addAttribute("login_fail","Enter valid username and password");
			return "login";
		}
		
		
			
		}
	@RequestMapping("/enroll_student")	
	public String login(@ModelAttribute Student student ){
		ss.savestudentdetails(student);
		
		return "adminscreen";
	}

}
