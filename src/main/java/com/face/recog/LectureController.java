package com.face.recog;

import java.util.List;
import java.util.Map;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.face.model.ConcentrationVO;
import com.face.model.LectureDAO;
import com.face.model.LectureVO;
import com.face.model.MyLectureDAO;
import com.face.model.MyLectureVO;

@Controller
public class LectureController {
	@Autowired LectureDAO dao;
	@Autowired MyLectureDAO mdao;
	//강의목록
//	@RequestMapping("lectureList.do")
//	public String lectureList (Model model) {
//		model.addAttribute("viewAll",dao.selectLecture());
//		return "lecture/lectureList";
//	}
	
	//강의세부목록
	@RequestMapping("lectureSubList.do")
	public String lectureSubList (Model model
			, @RequestParam(value="lecNo") int lecNo) {
		model.addAttribute("viewAll", dao.selectSubLecture(lecNo));
		return "lecture/lectureSubList";
	}
	
	//강의신청
	@RequestMapping("myLectureInsert.do")
	public String myLectureInsert(Model model
			, @RequestParam(value="lecNo") int lecNo
			, @RequestParam(value="allEpi") int allEpi) {
		String id = "suin";
		dao.insertMyLecture(id, lecNo, allEpi);
		model.addAttribute("lecNo", lecNo);
		return "redirect:myLectureList.do";
	}
	
	//강의취소
	@RequestMapping("myLectureDelete.do")
	public String myLectureDelete(Model model
			, @RequestParam(value="lecNo") int lecNo) {
		String id = "suin";
		dao.deleteMyLecture(id, lecNo);
		return "redirect:myLectureList.do";
	}
	
	//내 강의목록
	@RequestMapping("myLectureList.do")
	public String myLectureList(Model model) {
		String id = "suin";
		model.addAttribute("viewAll",dao.selectMyLecture(id));
		return "lecture/myLectureList";
	}		
	
	//내 강의세부목록
	@RequestMapping("myLectureSubList.do")
	public String myLectureSubList(Model model
			, @RequestParam(value="lecNo") int lecNo) {
		String id = "suin";
		model.addAttribute("viewAll", dao.selectMySubLecture(id, lecNo));
		return "lecture/myLectureSubList";
	}
	
	//집중도분석
	@RequestMapping("/concentration.do")
	public String concentration (Model model
			, @RequestParam(value="myLecNo")int myLecNo) {
		Map map = dao.selectConcentration(myLecNo);
		
		map.get("list");
		List<ConcentrationVO> list = (List<ConcentrationVO>)map.get("list");
		
		MyLectureVO vo = (MyLectureVO)map.get("vo");
		
		model.addAttribute("list", list);
		model.addAttribute("vo",vo);
		return "lecture/concentration";
	}
	
	
	@RequestMapping("videdo.do")
	public String video() {	
		return "mainService/video";
	}
	
	
	/*
	//강의 영상 경로 찾음
	@RequestMapping("videoPath.do")
	public String videoPath(String lecNo, String episode, Model model) {	
		System.out.println("controller lecNo : " + lecNo );
		System.out.println("controller episode : " + episode );
		LectureVO vo = new LectureVO(Integer.parseInt(lecNo), Integer.parseInt(episode));
		System.out.println("controller : " + vo);
		String path = dao.videoPath(vo);
		System.out.println("Controller : " + path);
		model.addAttribute("path", path);
		return "mainService/video";
	}
	*/
	
	
	//강의 영상 경로 찾음
	@RequestMapping("videoPath.do")
	public String videoPath(String lecNo, String episode, String myLecNo, String path, Model model) {	
		MyLectureVO vo = new MyLectureVO(Integer.parseInt(lecNo), Integer.parseInt(episode), path, Integer.parseInt(myLecNo));
		System.out.println(lecNo);
		System.out.println(episode);
		System.out.println(myLecNo);
		model.addAttribute("path", vo);		
		return "mainService/video";
	}
		
	//myLecture 테이블에서 curTime컬럼 수정
	@RequestMapping("videoClose.do")
	public String myLectureUpdate(String lecNo, String episode, String myLecNo) {
		MyLectureVO vo = new MyLectureVO(Integer.parseInt(lecNo), Integer.parseInt(episode), Integer.parseInt(myLecNo));
		System.out.println("contriller : " + lecNo);
		System.out.println("contriller : " + episode);
		System.out.println("contriller : " + myLecNo);
		int result = mdao.myLectureUpdate(vo);
		return "redirect:/lecture/myLectureSubList";
	}
}
