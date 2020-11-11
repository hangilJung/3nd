package com.face.recog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {


	
	@RequestMapping("/test.do")
	public String test() {		
		return "test123";
	}
	
	@RequestMapping("/test2.do")
	public String test2() {		
		return "test2";
	}
}
