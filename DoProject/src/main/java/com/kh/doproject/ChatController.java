package com.kh.doproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	
	@RequestMapping("/chat/chat.ch")
	public String chat(Model model){
		
		return "chat/chat";
		
	}
	
}
