package com.andreearosu.springMvc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController {
	
			private String uName;
			private int score=0;
              @RequestMapping(value = "/", method = RequestMethod.GET)
              public String home(Locale locale, Model model) {
            	  System.out.println("Requested Homepage, locale = " + locale);
                  Date date = new Date();
                  DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
                  String formattedDate = dateFormat.format(date);
                  model.addAttribute("serverTime", formattedDate);
                  return "home";
              }
              
              @RequestMapping(value = "/user", method = RequestMethod.POST)
              public String user(@Validated User user, Model model) {
              	System.out.print("User Page requested: ");
                model.addAttribute("userName", user.getUserName());
                model.addAttribute("email", user.getEmail());
                model.addAttribute("password", user.getPswd());
                uName = user.getUserName();
                return "user";
              }
              
              /*@RequestMapping(value="/user", method=RequestMethod.POST)
          		public String user(@RequestParam(name="userName") String user, Model model) {
          		System.out.println("User Page Requested");
          		model.addAttribute("userName", user);
          		return "user";*/
              
              @RequestMapping(value = "/user2", method = RequestMethod.POST)
              public String user2(@Validated Model model) {
              	System.out.print("User Page requested: ");
                model.addAttribute("userName", uName);
                return "user2";
              }
              
              @RequestMapping(value = "/Q1", method = RequestMethod.POST)
              public String Q1(@Validated Model model) {
            	  model.addAttribute("uName", uName);
                  return "Q1";
              }
              
              @RequestMapping(value = "/Q2", method = RequestMethod.POST)
              public String Q2(@Validated Question question, Model model) {
            	  score=0;
                  score += Integer.parseInt(question.getAnswer());
                  model.addAttribute("uName", uName);
                  return "Q2";
              }
              
              @RequestMapping(value = "/Q3", method = RequestMethod.POST)
              public String Q3(@Validated Question question, Model model) {
                  score += Integer.parseInt(question.getAnswer());
                  model.addAttribute("uName", uName);
                  return "Q3";
              }
              
              @RequestMapping(value = "/Q4", method = RequestMethod.POST)
              public String Q4(@Validated Question question, Model model) {
            	  model.addAttribute("uName", uName);
                  score += Integer.parseInt(question.getAnswer());
                  return "Q4";
              }
              
              @RequestMapping(value = "/Q5", method = RequestMethod.POST)
              public String Q5(@Validated Question question, Model model) {
            	  model.addAttribute("uName", uName);
                  score += Integer.parseInt(question.getAnswer());
                  return "Q5";
              }
              
              @RequestMapping(value = "/Q6", method = RequestMethod.POST)
              public String Q6(@Validated Question question, Model model) {
            	  model.addAttribute("uName", uName);
                  score += Integer.parseInt(question.getAnswer());
                  return "Q6";
              }
              
              @RequestMapping(value = "/Results", method = RequestMethod.POST)
              public String Results(@Validated Question question, Model model) {
            	  model.addAttribute("uName", uName);
            	  score += Integer.parseInt(question.getAnswer());
            	  model.addAttribute("score", score);
                  return "Results";
              }
}


