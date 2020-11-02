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
	
	
	@RequestMapping("/list.do")
	public String list() {		
		return "member/memberList";
	}
}
