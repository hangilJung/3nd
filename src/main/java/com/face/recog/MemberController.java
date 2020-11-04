package com.face.recog;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.helper.HttpConnection.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.face.model.MemberMyBatisDAO;
import com.face.model.MemberVO;


@Controller
public class MemberController {
	
	@Autowired
	private MemberMyBatisDAO dao;
	
	//메인 페이지로 이동
	@RequestMapping("/main.do")
	public String main() {		
		return "main";
	}
	
	//메인 서비스 페이지로 이동
	@RequestMapping("/mainService.do")
	public String mainService() {		
		return "mainService/mainService";
	}
	
	//마이 페이지로 이동
	@RequestMapping("/myPage.do")
	public String myPage() {		
		return "myPage/myPage";
	}
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
	
	
	@RequestMapping("/logout.do")
	public String logOut() {		
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
	//================= End 회원가입 ===========================
}

