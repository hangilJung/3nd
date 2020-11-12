package com.face.model;

public class MyLectureVO {
	private int lecNo;
	private String subject;
	private String lecName;
	private String lecIntro;
	private String thumbPath;
	private int allEpi;
	private String teacher;
	private String targets;
	private String book;
	private String levels;
	private int episode;
	private String epiIntro;
	private String path;
	private int myLecNo;
	private String id;
	private int curTime;
	public MyLectureVO() {
		super();
	}
	
	public MyLectureVO(String lecName, int episode, String epiIntro, String path, int curTime) {
		super();
		this.lecName = lecName;
		this.episode = episode;
		this.epiIntro = epiIntro;
		this.path = path;
		this.curTime = curTime;
	}


	public MyLectureVO(int lecNo, String subject, String lecName, String lecIntro, String thumbPath, int allEpi,
			String teacher, String targets, String book, String levels, int episode, String epiIntro, String path,
			int myLecNo, String id, int curTime) {
		super();
		this.lecNo = lecNo;
		this.subject = subject;
		this.lecName = lecName;
		this.lecIntro = lecIntro;
		this.thumbPath = thumbPath;
		this.allEpi = allEpi;
		this.teacher = teacher;
		this.targets = targets;
		this.book = book;
		this.levels = levels;
		this.episode = episode;
		this.epiIntro = epiIntro;
		this.path = path;
		this.myLecNo = myLecNo;
		this.id = id;
		this.curTime = curTime;
	}
	@Override
	public String toString() {
		return "MyLectureVO [lecNo=" + lecNo + ", subject=" + subject + ", lecName=" + lecName + ", lecIntro="
				+ lecIntro + ", thumbPath=" + thumbPath + ", allEpi=" + allEpi + ", teacher=" + teacher + ", targets="
				+ targets + ", book=" + book + ", levels=" + levels + ", episode=" + episode + ", epiIntro=" + epiIntro
				+ ", path=" + path + ", myLecNo=" + myLecNo + ", id=" + id + ", curTime=" + curTime + "]";
	}
	public int getLecNo() {
		return lecNo;
	}
	public void setLecNo(int lecNo) {
		this.lecNo = lecNo;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getLecName() {
		return lecName;
	}
	public void setLecName(String lecName) {
		this.lecName = lecName;
	}
	public String getLecIntro() {
		return lecIntro;
	}
	public void setLecIntro(String lecIntro) {
		this.lecIntro = lecIntro;
	}
	public String getThumbPath() {
		return thumbPath;
	}
	public void setThumbPath(String thumbPath) {
		this.thumbPath = thumbPath;
	}
	public int getAllEpi() {
		return allEpi;
	}
	public void setAllEpi(int allEpi) {
		this.allEpi = allEpi;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getTargets() {
		return targets;
	}
	public void setTargets(String targets) {
		this.targets = targets;
	}
	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	public String getLevels() {
		return levels;
	}
	public void setLevels(String levels) {
		this.levels = levels;
	}
	public int getEpisode() {
		return episode;
	}
	public void setEpisode(int episode) {
		this.episode = episode;
	}
	public String getEpiIntro() {
		return epiIntro;
	}
	public void setEpiIntro(String epiIntro) {
		this.epiIntro = epiIntro;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getMyLecNo() {
		return myLecNo;
	}
	public void setMyLecNo(int myLecNo) {
		this.myLecNo = myLecNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCurTime() {
		return curTime;
	}
	public void setCurTime(int curTime) {
		this.curTime = curTime;
	}
}
