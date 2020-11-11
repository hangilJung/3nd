package com.face.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SelfStudyDAO {
	@Autowired SqlSessionFactory sessionFactory;

	public List<SelfStudyVO> selectSelfStudy(String id) {
		SqlSession session = sessionFactory.openSession();
		List<SelfStudyVO> list = session.selectList("selectSelfStudy",id);
		session.close();
		return list;
	}
	
	
}
