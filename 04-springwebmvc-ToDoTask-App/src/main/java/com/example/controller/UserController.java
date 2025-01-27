package com.example.controller;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.entity.LoginEntiry;
import com.example.entity.UserEntity;
import com.example.repository.UserRepository;

@Controller
public class UserController {
	@Autowired
    private UserRepository userRepo;
	@GetMapping("/")
	public String loadForm(Model model)
	{
		return "register";
	}
	@PostMapping("/register")
	public String handleRegister(UserEntity user,Model model)
	{
		System.out.println(user);
		UserEntity userEntity=new UserEntity();
		BeanUtils.copyProperties(user, userEntity);
		UserEntity savedUser=userRepo.save(userEntity);
		if (savedUser != null && savedUser.getId() > 0) {
            model.addAttribute("msg", "Registration Successful!");
            return "login";
        } else {
            model.addAttribute("msg", "User not successfully registered.");
            return "register"; 
        }
	}
	
	@GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }
	@PostMapping("/login")
	public String checkLogin(LoginEntiry login,Model model)
	{String email=login.getEmail();
	String password=login.getPassword();
	UserEntity entity=userRepo.findByEmailAndPassword(email, password);
	System.out.println("email :: "+ email+"\nPassword :: "+password);
	if(entity==null)
	{
		model.addAttribute("msg","login failed...");
		return "login";
	}
	else if((email.equals(entity.getEmail()) && (password.equals(entity.getPassword()))))
	{
		return "tracker";
	}
	else
	{
		model.addAttribute("msg","login failed!");
		return "login";
	}
		
	}


}
