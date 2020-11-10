package com.face.model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyLectureDAO {
	@Autowired SqlSessionFactory sessionFactory;
	
	public int countMyLecture(String id) {
		SqlSession session = sessionFactory.openSession();
		int cnt = session.selectOne("countMyLecture", id);
		session.close();
		return cnt;
	}

	public List<MyLectureVO> selectMyLecture(PagingVO vo) {
		SqlSession session = sessionFactory.openSession();
		List<MyLectureVO> list = session.selectList("selectMyLecture",vo);
		session.close();
		return list;
	}

	public int countMySubLecture(int myLectureNo) {
		SqlSession session = sessionFactory.openSession();
		int cnt = session.selectOne("countMySubLecture", myLectureNo);
		session.close();
		return cnt;
	}

	public List<MyLectureVO> selectMySubLecture(PagingVO vo, int myLectureNo) {
		SqlSession session = sessionFactory.openSession();
		Map map = new HashMap();
		map.put("vo", vo);
		map.put("myLectureNo", myLectureNo);
		List<MyLectureVO> list = session.selectList("selectMySubLecture", map);	//id, myLectureNo, episode, name, path
		session.close();
		return list;
	}

	public Map selectConcentration(int myLectureNo) {
		SqlSession session = sessionFactory.openSession();
		List<ConcentrationVO> list = session.selectList("selectConcentration", myLectureNo);
		MyLectureVO vo = session.selectOne("selectMySubLecture2", myLectureNo);
		session.close();
		Map map = new HashMap();
		map.put("list", list);
		map.put("vo", vo);
		return map;
	}

}