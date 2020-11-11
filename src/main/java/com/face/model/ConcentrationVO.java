package com.face.model;

public class ConcentrationVO {
	int time;
	double score;
	
	public ConcentrationVO() {
		super();
	}
	
	public ConcentrationVO(int time, double score) {
		super();
		this.time = time;
		this.score = score;
	}
	
	@Override
	public String toString() {
		return "ConcentrationVO [time=" + time + ", score=" + score + "]";
	}
	
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
}
