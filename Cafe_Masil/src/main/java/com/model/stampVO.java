package com.model;

public class stampVO {
	
	private int allStamp;
	private String cafeName;
	
	public stampVO(String cafeName, int allStamp) {
		super();
		this.allStamp = allStamp;
		this.cafeName = cafeName;
	}

	public int getAllStamp() {
		return allStamp;
	}
	public String getCafeName() {
		return cafeName;
	}

	
}
