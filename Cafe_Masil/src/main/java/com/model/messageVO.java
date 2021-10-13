package com.model;

public class messageVO {

	private String cafeName;
	private String message;
	
	public messageVO(String cafeName, String message) {
		super();
		this.cafeName = cafeName;
		this.message = message;
	}

	public String getCafeName() {
		return cafeName;
	}

	public String getMessage() {
		return message;
	}
	
	
}
