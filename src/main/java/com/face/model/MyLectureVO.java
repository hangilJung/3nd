package com.face.model;

public class MyLectureVO {
	String id;
	int myLectureNo;
	int episode;
	String name;
	String path;
	
	public MyLectureVO() {
		super();
	}
	
	public MyLectureVO(String id, int myLectureNo, int episode, String name, String path) {
		super();
		this.id = id;
		this.myLectureNo = myLectureNo;
		this.episode = episode;
		this.name = name;
		this.path = path;
	}
	
	@Override
	public String toString() {
		return "MyLectureVO [id=" + id + ", myLectureNo=" + myLectureNo + ", episode=" + episode + ", name=" + name
				+ ", path=" + path + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getMyLectureNo() {
		return myLectureNo;
	}
	public void setMyLectureNo(int myLecturNo) {
		this.myLectureNo = myLecturNo;
	}
	public int getEpisode() {
		return episode;
	}
	public void setEpisode(int episode) {
		this.episode = episode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}