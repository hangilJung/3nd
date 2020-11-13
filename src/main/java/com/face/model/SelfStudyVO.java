package com.face.model;

public class SelfStudyVO {
	String id;
	String studydate;
	int studyTime;
	
	public SelfStudyVO() {
		super();
	}
	
	public SelfStudyVO(String id, String studydate, int studyTime) {
		super();
		this.id = id;
		this.studydate = studydate;
		this.studyTime = studyTime;
	}
	
	@Override
	public String toString() {
		return "SelfStudyVO [id=" + id + ", studydate=" + studydate + ", studyTime=" + studyTime + "]";
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStudydate() {
		return studydate;
	}
	public void setStudydate(String studydate) {
		this.studydate = studydate;
	}
	public int getstudyTime() {
		return studyTime;
	}
	public void setstudyTime(int studyTime) {
		this.studyTime = studyTime;
	}
}
