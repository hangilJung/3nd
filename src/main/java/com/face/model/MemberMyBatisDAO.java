package com.face.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;


@Repository
public class MemberMyBatisDAO {
	   
	   @Autowired   
	   private SqlSessionFactory sqlSessionFactory; // SqlSession
	   
	   //회원가입	   
	   public int memberInsert(MemberVO vo){
		   SqlSession session=sqlSessionFactory.openSession();
		   int cnt = session.insert("memberInsert", vo);
		   session.commit();
		   session.close(); // 반납
		   return cnt;
	   }
	   
	   //회원가입 시 이메일 중복 확인
	   public int doubleCheck(String id) {
		   SqlSession session=sqlSessionFactory.openSession();
		   int result= session.selectOne("doubleCheck",id);		   
		   session.close();
		   return result;			
	   }
	   
	   //로그인
	   public MemberVO login(MemberVO vo) {
		   SqlSession session=sqlSessionFactory.openSession();
		   MemberVO info= session.selectOne("login", vo);
		   session.close();
		   return info;
	   }
	
	   //회원 정보 수정
	   public int memberUpdate(MemberVO vo) {
		   SqlSession session=sqlSessionFactory.openSession();
		   int result = session.update("memberUpdate", vo);
		   session.commit();
		   session.close();
		   return result;
	   }
	   
	 //얼굴 사진 등록 완료
	   public int faceRegistration(String id) {
		   System.out.println("DAO의 id값은 : "+ id);	
		   SqlSession session=sqlSessionFactory.openSession();
		   int result = session.update("faceRegistration", id);
		   session.commit();
		   session.close();
		   return result;
	   }
	   
	
}
