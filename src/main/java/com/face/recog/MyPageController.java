package com.face.recog;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.face.model.ConcentrationVO;
import com.face.model.MyLectureDAO;
import com.face.model.MyLectureVO;
import com.face.model.PagingVO;

@Controller
public class MyPageController {
	@Autowired MyLectureDAO dao;
	
	@RequestMapping("/myLectureList.do")
	public String myLectureList(PagingVO vo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		String id = "suin";
		int total = dao.countMyLecture(id);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", dao.selectMyLecture(vo));	
		
		return "lecture/myLectureList";
	}
	
	@RequestMapping("/myLectureSubList.do")
	public String myLectureSubList(PagingVO vo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage
			, @RequestParam(value="myLectureNo")int myLectureNo) {
			
		int total = dao.countMySubLecture(myLectureNo);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", dao.selectMySubLecture(vo, myLectureNo));	
		
		return "lecture/myLectureSubList";
	}
	
	@RequestMapping("/concentration.do")
	public String concentration (Model model
			, @RequestParam(value="myLectureNo")int myLectureNo) {
		Map map = dao.selectConcentration(myLectureNo);
		map.get("list");
		List<ConcentrationVO> list = (List<ConcentrationVO>)map.get("list");
		MyLectureVO vo = (MyLectureVO)map.get("vo");
		model.addAttribute("list", list);
		model.addAttribute("vo",vo);
		return "lecture/concentration";
	}
}
