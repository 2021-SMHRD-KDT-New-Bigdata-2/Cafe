package com.model;

public class cafeVO {
	
	private int num;
	private String bossName;
	private String businessNumber;
	private String bossTel;
	private String cafeName;
	private String cafeAddress;
	private String cafeTel;
	
	public cafeVO(String bossName, String businessNumber, String bossTel, String cafeName, String cafeAddress,
			String cafeTel) {
		this.bossName = bossName;
		this.businessNumber = businessNumber;
		this.bossTel = bossTel;
		this.cafeName = cafeName;
		this.cafeAddress = cafeAddress;
		this.cafeTel = cafeTel;
	}

	public cafeVO(int num, String cafeName, String cafeAddress, String cafeTel) {
		this.num = num;
		this.cafeName = cafeName;
		this.cafeAddress = cafeAddress;
		this.cafeTel = cafeTel;
	}


	public String getBossName() {
		return bossName;
	}

	public String getBusinessNumber() {
		return businessNumber;
	}

	public String getBossTel() {
		return bossTel;
	}

	public String getCafeName() {
		return cafeName;
	}

	public String getCafeAddress() {
		return cafeAddress;
	}

	public String getCafeTel() {
		return cafeTel;
	}
	
	
	
	
	
}
