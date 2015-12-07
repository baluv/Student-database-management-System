/**
 * 
 */
package com.balu.curd.controller;



import com.balu.curd.domain.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.balu.curd.service.LoginService;

/**
 * @author bmv00_000
 *
 */
@Controller
public class LoginController {

	/**
	 * 
	 */
	public LoginController() {

	}
	@Autowired(required=true)
	private LoginService loginService;
	
	@RequestMapping(value="/index")
	public ModelAndView indexPage()
	{
		System.out.println("The Login exe...");
		return new  ModelAndView("login");
	}
	@RequestMapping(value="/check_login")
	public ModelAndView checkLogin(@ModelAttribute("login") Login login)
	{
		boolean flag=false;
		flag=loginService.checkLogin(login);
		
		if(flag)
		{
			return new ModelAndView("home");
			/*return new ModelAndView("admin_home");*/
		}
		else{
			return new ModelAndView("errorpage","message", "verify username & password");
		}
		
	}
	@RequestMapping(value="/check_logout.htm")
	public ModelAndView checkLogout(@ModelAttribute("login") Login login)
	{
		boolean flag=false;
		flag=loginService.checkLogout(login) != null;
		
		if(flag)
		{
			return new ModelAndView("login");
		}
		else{
			return new ModelAndView("login","message1", "Loggedout successfully...");
		}
		
	}
}
