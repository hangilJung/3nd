package com.face.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDAO {
	@Autowired SqlSessionFactory sessionFactory;
	
	public List<LectureVO> selectLecture() {
		SqlSession session = sessionFactory.openSession();
		List<LectureVO> list = session.selectList("selectLecture");
		session.close();
		return list;
	}

	public List<LectureVO> selectSubLecture(int lecNo) {
		SqlSession session = sessionFactory.openSession();
		List<LectureVO> list = session.selectList("selectSubLecture", lecNo);
		session.close();
		return list;
	}

	public void insertMyLecture(String id, int lecNo, int allEpi) {
		SqlSession session = sessionFactory.openSession();
		Map map = new HashMap();
		map.put("id", id);
		map.put("lecNo", lecNo);
		for(int i=1; i<=allEpi; i++) {
			map.put("episode", i);
			session.insert("insertMyLecture", map);
		}
		session.close();
	}
	
	public void deleteMyLecture(String id, int lecNo) {
		SqlSession session = sessionFactory.openSession();
		Map map = new HashMap();
		map.put("id", id);
		map.put("lecNo", lecNo);
		session.delete("deleteMyLecture", map);
		session.close();
	}

	public List<LectureVO> selectMyLecture(String id) {
		SqlSession session = sessionFactory.openSession();
		List<LectureVO> list = session.selectList("selectMyLecture", id);
		session.close();
		return list;
	}

	public List<MyLectureVO> selectMySubLecture(String id, int lecNo) {
		SqlSession session = sessionFactory.openSession();
		Map map = new HashMap();
		map.put("id", id);
		map.put("lecNo", lecNo);
		List<MyLectureVO> list = session.selectList("selectMySubLecture", map);
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
	
	public String videoPath(LectureVO vo) {
		SqlSession session = sessionFactory.openSession();
		String path = session.selectOne("videoPath", vo);
		System.out.println("DAO : " + path);
		session.close();
		return path;
		
	}
}
