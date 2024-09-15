package com.wipro.ShipReservationSystem.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wipro.ShipReservationSystem.Service.ShipDetailsService;
import com.wipro.ShipReservationSystem.Service.UserService;
import com.wipro.ShipReservationSystem.Entities.*;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {
	@Autowired
	private UserService service;
	@Autowired
	private ShipDetailsService shipservice;
	
	@GetMapping("/")
	public String Login()
	{
		
		return "Index";
	}
	
	
	@GetMapping("/registration")
	public String Registration()
	{
		
		return "Register";
				
	}
	
	
	@RequestMapping("/home123")
	public String home(Model m,HttpSession session)
	{
		Login user1=(Login) session.getAttribute("msg");
		if(user1!=null) {
			String name12=user1.getUsername();
			m.addAttribute("name123", name12);
			m.addAttribute("msg23","Ticket Printed Succesfully Continue booking...");

		return "search";
		}
		else {
			return "login";
		}
	}
	
	
	@RequestMapping("/home12")
	public String home1(Model m,HttpSession session)
	{
		Login user1=(Login) session.getAttribute("msg");
		if(user1!=null) {
			String name12=user1.getUsername();
			m.addAttribute("name123", name12);
			//m.addAttribute("msg23","Ticket Printed Succesfully Continue booking...");

		return "search";
		}
		else {
			return "login";
		}
	}
	
	
	@RequestMapping(value = "/forgotpassword")
	public String forgotpassword(@RequestParam("username")String name,@RequestParam("newpassword")String newpassword,@RequestParam("newpassword1")String confirmpassword,Model m)
	{
		User user=service.getcurrentUser(name);
		m.addAttribute("msg1","Changed Succesfully plz Login with new Password");
		String pass=user.getPassword();
		if(!pass.equals(newpassword)&&newpassword.equals(confirmpassword))
		{
			user.setPassword(newpassword);
			service.saveUser(user);
		}
		else {
			m.addAttribute("msg","Passwords Mismatch");
			return "forgotpassword";
		}
		return "login";
	}
	
	
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public ModelAndView register( User user) throws Exception
	{
		System.out.println(user.getUsername());
		User user1=null;
		ModelAndView md=new ModelAndView("Register");
		
			 user1= service.toRegister(user);
		
		
		if(user1!=null)
		{
			
		md.addObject("message","Succesfully Registered,Now you can login");
		md.setViewName("login");
		}
		else {
		md.addObject("msg12", "User Alredy Existed go and login");
		md.setViewName("Register");
		}
		return md;
	}
	
	
	@RequestMapping(value ="/search",method = RequestMethod.POST)
	public String login(Login user,Model m,HttpSession session) throws Exception
	{
		
		User l= service.toLogin(user);
		session.setAttribute("msg",user);
		Login user1=(Login) session.getAttribute("msg");
		if(user!=null&&l!=null) {
		
		System.out.println(user.getPassword()+" "+user.getUsername());
		//List<ShipDetails>ships=shipservice.findAll();
		//m.addAttribute("ships", ships);
		String name12=user1.getUsername();
		m.addAttribute("name123", name12);
		
		return "search";
		}
		else if(l==null) {
			m.addAttribute("msg", "incorrect username or password!!!");
			return "login";
		}
		else {
			return "login";
		}
	}
	
	
	@PostMapping("/password")
	public String password(HttpSession session,@RequestParam("newpassword")String newpassword,@RequestParam("password")String password,@RequestParam("newpassword1")String confirmpassword,Model m)
	{
		String username=((Login)session.getAttribute("msg")).getUsername();
		String pass=((Login)session.getAttribute("msg")).getPassword();
		User user=service.getcurrentUser(username);
		if(password.equalsIgnoreCase(pass))
		{
			user.setPassword(newpassword);
		}
		if(newpassword.equals(confirmpassword))
		{
		service.saveUser(user);
		m.addAttribute("msg", "Changed Succesfully plz Login with new Password");
		}
		else {
			m.addAttribute("msg1", "Passwords Mismatch");
			return "password";
		}
		
		return "login";
	}
	
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session)
	{
		Login user=(Login) session.getAttribute("msg");
		if(user!=null)
		{
			session.removeAttribute("msg");
		}
		return new ModelAndView("Index");
		
	}
}
