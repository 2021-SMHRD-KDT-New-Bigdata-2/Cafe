package com.model;

public class evalVO {

	private int num;
	private String nickname;
	private String businessNumber;
	private String cafeName;
	private String evaluation;
	
	public evalVO(int num,String nickname, String businessNumber, String cafeName, String evaluation) {
		this.num = num;
		this.nickname = nickname;
		this.businessNumber = businessNumber;
		this.cafeName = cafeName;
		this.evaluation = evaluation;
	}

	public int getNum() {
		return num;
	}

	public String getNickname() {
		return nickname;
	}

	public String getBusinessNumber() {
		return businessNumber;
	}

	public String getCafeName() {
		return cafeName;
	}

	public String getEvaluation() {
		return evaluation;
	}
	
	

	
	
	

	

}
