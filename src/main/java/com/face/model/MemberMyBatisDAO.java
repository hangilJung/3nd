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
	 
	   public List<MemberVO> getAllList(){
	      SqlSession session=sqlSessionFactory.openSession();
	      List<MemberVO> list=session.selectList("getAllList");
	      session.close(); // 반납
	      return list;
	   }
}
