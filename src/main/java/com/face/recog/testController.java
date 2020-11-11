package com.face.recog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {


	
	@RequestMapping("/test.do")
	public String test() {		
		return "test123";
	}
		
	@RequestMapping("/result.do")
	public String result() {		
		return "test2";
	}
	
}
