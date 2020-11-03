package com.face.recog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {
//	@Autowired
//	private MemberMyBatisDAO dao;
	
	
	@RequestMapping("/main.do")
	public String main() {		
		return "main";
	}
	
	@RequestMapping("/mainService.do")
	public String mainService() {		
		return "mainService/mainService";
	}
	

	@RequestMapping("/myPage.do")
	public String myPage() {		
		return "myPage/myPage";
	}
}

