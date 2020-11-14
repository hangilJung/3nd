package com.face.recog;

import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.spi.LoggerFactory;
import org.jsoup.helper.HttpConnection.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.face.model.LectureDAO;
import com.face.model.MemberMyBatisDAO;
import com.face.model.MemberVO;


@Controller
public class MemberController {
	
	
	@Autowired
	private MemberMyBatisDAO dao;
	
	@Autowired
	private LectureDAO ldao;
	
	//================= Start 페이지 to 페이지 이동 ===========================
	//메인 페이지로 이동
	@RequestMapping("/main.do")
	public String main() {		
		return "main";
	}
	
	
	//마이 페이지로 이동
	@RequestMapping("/myPage.do")
	public String myPage() {		
		return "myPage/myPage";
	}	
	
	//================= End 페이지 to 페이지 이동 ===========================
	
	//================= Start 메인 서비스 페이지 ===========================
	//메인 서비스 페이지로 이동
	@RequestMapping("/mainService.do")
	public String mainService() {		
		return "mainService/mainService";
	}
	
	//메인 서비스 메뉴바에서 모든 강의로 이동
	@RequestMapping("/allLecture.do")
	public String allLecture(Model model) {	
		model.addAttribute("viewAll", ldao.selectLecture());
		return "mainService/allLecture";
	}
	
	//내가 볼 강의를 클릭하면 동영상이 나온다
	@RequestMapping("/video.do")
	public String video() {		
		return "mainService/video";
	}
	
	
	//================= End 메인 서비스 페이지 ===========================	
	
	
	//내가 볼 강의를 클릭하면 동영상이 나온다
//		@RequestMapping("/update.do")
//		public String update() {
//			int result = dao.memberUpdate(vo);
//			
//			return "myPage/myPage";
//		}	
	
	
	
	//================= Start 로그인 로그아웃 ===========================
	//로그인 화면으로 이동
	@RequestMapping("/loginForm.do")
	public String loginForm(MemberVO vo) {
		return "member/loginForm";
	}
	
	//로그인 버튼 클릭
	@RequestMapping("/login.do")
	public String login(MemberVO vo, HttpSession session) {
		MemberVO info = dao.login(vo);
		if(info!=null) {			
			System.out.println("로그인 성공");			
			session.setAttribute("info", info);			
		}else {
			System.out.println("로그인 실패");
		}
		
		return "redirect:/main.do";
	}	
	
	//로그아웃 글자 클릭
	@RequestMapping("/logout.do")
	public String logOut(HttpSession session) {
		session.removeAttribute("info");
		return "redirect:/main.do";
	}
	
	//================= End 로그인 로그아웃 ===========================
	
	//================= Start 회원가입 ===========================
	// 회원가입 누르면 나오는 페이지(이용약관)
	@RequestMapping("/sign.do")
	public String signUp() {		
		return "member/signUp";
	}
	
	// 회원가입 페이지(이메일,비밀번호,전화번호, 얼굴사진 등록)
	@RequestMapping("/sign2.do")
	public String signUp2() {		
		return "member/signUp2";
	}
	
	//회원가입 버튼 누를시 실행
	@RequestMapping("/insert.do")
	public String memberInsert(MemberVO vo) {
		dao.memberInsert(vo);
		return "redirect:/main.do";
	}
	
	
	
	//회원가입 중 이메일의 중복을 확인해줌
	@ResponseBody
	@RequestMapping(value="doubleCheck.do", produces = "application/String; charset=utf-8")
	//적어주기만 하면 무조건 session에 넘어간다 (의존성)
	public String idCheck(String id, HttpSession session) {
		int result = dao.doubleCheck(id);
		String data = Integer.toString(result);
		return data;	
	}
	//================= End 회원가입 ===========================\
	
	
	// 마이 페이지(비밀번호,전화번호, 얼굴사진 수정)
	@RequestMapping("/modify.do")
	public String modify(String id, String checkpw) {
		System.out.println("controller : " + id);
		String result = null;
		String chpw = dao.pwCheck(id);		
		if(chpw.equals(checkpw)){
			result = "myPage/modify";
		}else {
			result = "myPage/myPage";
		}
		
		return result;
	}
	
	//얼굴 사진 등록 완료 처리
	@RequestMapping("/faceRegistration.do")
	public String faceRegistration(String id) {	
		System.out.println("MemberController에서의 "+id);
		dao.faceRegistration(id);
		return "redirect:/myPage/modify";
	}
}

