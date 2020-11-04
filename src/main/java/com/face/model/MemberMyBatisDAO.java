package com.face.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberMyBatisDAO {
	   
	   @Autowired   
	   private SqlSessionFactory sqlSessionFactory; // SqlSession
	 	   
	   public int memberInsert(MemberVO vo){
		      SqlSession session=sqlSessionFactory.openSession();
		      int cnt = session.insert("memberInsert", vo);
		      session.commit();
		      session.close(); // 반납
		      return cnt;
	   }

	public MemberVO login(MemberVO vo) {
		  SqlSession session=sqlSessionFactory.openSession();
		  MemberVO info= session.selectOne("login", vo);
		  session.close();
		  return info;
	}
	
	
	
}
