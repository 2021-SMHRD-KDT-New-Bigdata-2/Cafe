package com.model;

public class evalVO {

	private int num;
	private String id;
	private String businessNumber;
	private String cafeName;
	private String evaluation;
	
	public evalVO(int num,String id, String businessNumber, String cafeName, String evaluation) {
		super();
		this.num = num;
		this.id = id;
		this.businessNumber = businessNumber;
		this.cafeName = cafeName;
		this.evaluation = evaluation;
	}

	public int getNum() {
		return num;
	}

	public String getId() {
		return id;
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
