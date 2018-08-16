package com.springmvc.bank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.moneymoney.app.model.service.ServiceImpl;

@Controller
public class TransactionController {
	ServiceImpl service = new ServiceImpl();
	@RequestMapping("/depositPerform")
	public String depositPerform(@RequestParam("accountNumber") int accountNumber, @RequestParam("amount") double amount, Model model) {
		String result = service.deposit(accountNumber, amount);
		model.addAttribute("result", result);
		model.addAttribute("bankAccount1",service.searchAccountById(accountNumber));
		model.addAttribute("classType1",service.searchAccountById(accountNumber).getClass().getSimpleName());
		return "status";

	}
	
	@RequestMapping("/withdrawPerform")
	public String withdrawPerform(@RequestParam("accountNumber") int accountNumber, @RequestParam("amount") double amount, Model model) {
		
		String result = service.withdraw(accountNumber, amount);
		model.addAttribute("result", result);
		model.addAttribute("bankAccount1",service.searchAccountById(accountNumber));
		model.addAttribute("classType1",service.searchAccountById(accountNumber).getClass().getSimpleName());
		return "status";

	}
	
	@RequestMapping("/fundTransferPerform")
	public String fundTransferPerform(@RequestParam("sender") int sender,@RequestParam("receiver") int receiver, @RequestParam("amount") double amount, Model model) {
		String result;
		if(service.FundTransfer(service.searchAccountById(sender), service.searchAccountById(receiver), amount))
		{
			result = "Payment Successful";
		}
		else {
			result = "Payment Unuccessful";
		}
		model.addAttribute("result", result);
		model.addAttribute("bankAccount1",service.searchAccountById(sender));
		model.addAttribute("classType1",service.searchAccountById(sender).getClass().getSimpleName());
		model.addAttribute("bankAccount2",service.searchAccountById(receiver));
		model.addAttribute("classType2",service.searchAccountById(receiver).getClass().getSimpleName());
		return "status";

	}
	
	@RequestMapping("/search")
	public String searchAccount(@RequestParam("accNo") int accountNumber, Model model) {
		model.addAttribute("bankAccount1",service.searchAccountById(accountNumber));
		return "status";

	}
}
