package com.face.recog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.face.model.SelfStudyDAO;
import com.face.model.SelfStudyVO;

@Controller
public class TimerController {
	@Autowired SelfStudyDAO dao;
	
	@RequestMapping("/timerCalendar.do")
	public String timerCalendar(Model model
			/*,@RequestParam(value="id")String id*/){
		List<SelfStudyVO> list = dao.selectSelfStudy("suin");
		model.addAttribute("list",list);
		return "timer/timerCalendar";
	}
}
