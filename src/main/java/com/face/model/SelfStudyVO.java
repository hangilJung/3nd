package com.face.model;

public class SelfStudyVO {
	String id;
	String studydate;
	int time;
	
	public SelfStudyVO() {
		super();
	}
	
	public SelfStudyVO(String id, String studydate, int time) {
		super();
		this.id = id;
		this.studydate = studydate;
		this.time = time;
	}
	
	@Override
	public String toString() {
		return "SelfStudyVO [id=" + id + ", studydate=" + studydate + ", time=" + time + "]";
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
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
}
