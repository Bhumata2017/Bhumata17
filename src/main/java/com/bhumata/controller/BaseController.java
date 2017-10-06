package com.bhumata.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/")
public class BaseController {	
	@RequestMapping(value="/showHome")
	public String showHome()
	{
		return "Home";
	}
	
	//show vegetables
	@RequestMapping(value="/showVegetable")
	public String showVegetable()
	{
		return "vegetable";
	}
	
	
	
	//show fruits
	@RequestMapping(value="/showFruit")
	public String showFruit()
	{
		return "fruit";
	}
	
	
	
	  
	//show seeds
	@RequestMapping(value="/showSeed")
	public String showSeed()
	{
		return "seed";
	}
	
	
	//show flowers
		@RequestMapping(value="/showFlower")
		public String showFlower()
		{
			return "flower";
		}
		
		//show Dry fruits
				@RequestMapping(value="/showDryfruit")
				public String showDryfruit()
				{
					return "dryfruit";
				}
				
				
		//show cereals
	         @RequestMapping(value="/showCereals")
			 public String showCereals()
				{
					return "cereals";
				}
				
	      
	         


}