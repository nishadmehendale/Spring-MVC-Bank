package com.springmvc.bank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/deposit")
	public String deposit() {
		return "depositForm";
	}
	
	@RequestMapping("/withdraw")
	public String withdraw() {
		return "withdrawForm";
	}
	
	@RequestMapping("/fundTransfer")
	public String fundTransfer() {
		return "fundTransferForm";
	}
	
	@RequestMapping("/searchAccount")
	public String searchAccount() {
		return "searchAccount";
	}
	
	
}
