package com.bhumata.controller;

import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bhumata.model.User;
import com.bhumata.service.UserService;

@Controller
@RequestMapping(value="/")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MailSender mailSender;
	
	
//showLogin
	@RequestMapping(value="/UserLogin")
	public String UserLogin()
	{
	   	return "Login";
	}

//showSignUp
	@RequestMapping(value="/UserSignUp")
	public String UserSignUp()
	{
	   	return "SignUp";
	}
	

//save User Registration	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String saveUser(@RequestParam("fname") String fname,@RequestParam("lname") String lname,@RequestParam("contact")Long contact,
			@RequestParam("password")String password,@RequestParam("email")String email) throws IOException
	{
		Date date=new Date();
		User user=new User();
		user.setFname(fname);
		user.setLname(lname);
		user.setContact(contact);
		user.setEmail(email);
		user.setPassword(password);
		
		String hashcode = UUID.randomUUID().toString();
		user.setHashcode(hashcode);
		user.setUserCreation_date(date);
			

		String link="http://localhost:2018/bhumata/emailVerify"+"?hashcode="+hashcode+"&email="+email;
		String msg="Thank You For Your Interest..\r\n"+ "Your account"+" " +email+" " +"will be activated..\r\n"+" Please click on the below link.\r\n\r\n"+" "+link;
		sendDivastaysMail(email,msg,"Bhumata Email Activation Link");
		userService.saveUser(user);			
		return "Login";
		
	}
	
	public String sendDivastaysMail(String email,String message,String subject)
	{
		SimpleMailMessage simpleMailMessage=new SimpleMailMessage();
		simpleMailMessage.setTo(email);
		simpleMailMessage.setSubject(subject);
		simpleMailMessage.setText(message);
		mailSender.send(simpleMailMessage);
		return "Login";
	}
	
	@RequestMapping(value = "/emailVerify")
	public String emailVerify(@RequestParam(required = false, defaultValue = "hashcode", value="hashcode") String hashcode,@RequestParam(required = false, defaultValue = "email", value="email") String email,Model model)
	{
		User user=new User();
		user.setHashcode(hashcode);
		user.setEmail(email);
		user=userService.verifyUserAccount(user);
		if(user==null)
		{	
			model.addAttribute("status", "InvalidUser");
		}
		else
		{
			String status=user.getStatus();
			if(status.equals("Activated"))
			{
				model.addAttribute("status", "Activated");
			}
			else
			{
				model.addAttribute("status", "Expired");
			}

		}
		model.addAttribute("email", email);
		return "Home";
	}
	
	@RequestMapping(value = "/resendEmailVerify")
	public String resendEmailVerify(@RequestParam(required = false, defaultValue = "hashcode", value="hashcode") String hashcode,@RequestParam(required = false, defaultValue = "email", value="email") String email,Model model)
	{
		User user=new User();
		user.setHashcode(hashcode);
		user.setEmail(email);
		user=userService.sendNewLink(user);
		if(user==null)
		{	
			model.addAttribute("status", "InvalidUser");
		}
		else
		{
			String status=user.getStatus();
			if(status.equals("Activated"))
			{
				model.addAttribute("status", "Activated");
			}
			else
			{
				model.addAttribute("status", "Expired");
			}

		}
		model.addAttribute("email", email);
		return "Home";
	}
	@RequestMapping(value = "/emailExpirePopup",method = RequestMethod.POST)
	public String userExpirePopup(@RequestParam("email") String email)
	{
		Date date=new Date();
		System.out.println(date);
		User user=new User();
		String hashcode = UUID.randomUUID().toString();
		user.setEmailResendTime(date);
		user.setHashcode(hashcode);
	    user.setEmail(email);
	    user=userService.sendNewLink(user);
		String newLink="http://localhost:2018/bhumata/resendEmailVerify"+"?hashcode="+hashcode+"&email="+email;	
		String msg="Thank You For Your Interest..\r\n"+ "Your account"+" " +email+" " +"will be activated..\r\n"+" Please click on the below link.\r\n\r\n"+" "+newLink;
		sendDivastaysMail(email, msg," Divastays Email Verification Link");
		return "Home";
	}
	
	
//check email already exist or not
	@RequestMapping(value = "/checkUserMail")
	public @ResponseBody String checkEmail(@RequestParam("email") String email)
	{
		String msg=null;
		User user=new User();
		user.setEmail(email);
		boolean flag=userService.checkEmail(user);
		if(flag==true)
		{
			msg="Email id already exist";
		}
		else
		{
			msg="";
		}
		return msg;
	}
	
	
//check contact number already exist or not
	@RequestMapping(value = "/checkContactNumber")
	public @ResponseBody String checkContactNumber(@RequestParam("contact") Long contact)
	{
		String msg=null;
		User user=new User();
		user.setContact(contact);
		boolean flag=userService.checkContactNumber(user);
		if(flag==true)
		{
			msg="Contact Number already exist";
			
		}
		else
		{
			msg="";
		}
		return msg;
	}
	
	
//login check
		@RequestMapping(value ={"/LoginUser"}, method = RequestMethod.POST)
		public String login(@RequestParam("email") String email,@RequestParam("password") String password,HttpSession session,Model model,HttpServletRequest request,RedirectAttributes ra)
		{
			User user=new User();
			user.setEmail(email);
			user.setPassword(password);
			user=userService.checkLogin(user);
			if(user==null)
			{
				model.addAttribute("invalid",400);
				return "Login";
				
				
			}
			else
			{
				session.setAttribute("user",user);
				model.addAttribute("invalid",0000);
				return "redirect:/showHome";
				
			}
			
			
		}
	
//Logout User		
		@RequestMapping("/LogoutUser")
		public String logoutUser(HttpSession session) {
			session.removeAttribute("User");
			session.removeAttribute("email");
			session.invalidate();
			return "redirect:/showHome";
		}

}
