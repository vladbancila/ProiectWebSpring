package spring.web.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.web.dao.Offer;

@Controller
public class WelcomeController {
	
	@RequestMapping("/")
	public String showHome(){
		
		return "Home";
	}

}
