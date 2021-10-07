package com.model;

public class cafeVO {
	
	private int num;
	private String bossName;
	private String businessNumber;
	private String bossTel;
	private String cafeName;
	private String cafeAddress;
	private String cafeTel;
	private String ameIndex;
	private float lat;
	private float lng;
	private String cafeHours;
	private String bestmenu;
	private String tableNum;
	private String wifi;
	private String groupseat;
	private String beansell;
	private String alltime;
	private String smokingArea;
	private String roasting;

	
	
	
	public cafeVO(int num, String bossName, String businessNumber, String bossTel, String cafeName, String cafeAddress,
			String cafeTel, String ameIndex, float lat, float lng, String cafeHours, String bestmenu, String tableNum,
			String groupseat, String beansell, String alltime, String smokingArea, String roasting) {
		this.num = num;
		this.bossName = bossName;
		this.businessNumber = businessNumber;
		this.bossTel = bossTel;
		this.cafeName = cafeName;
		this.cafeAddress = cafeAddress;
		this.cafeTel = cafeTel;
		this.ameIndex = ameIndex;
		this.lat = lat;
		this.lng = lng;
		this.cafeHours = cafeHours;
		this.bestmenu = bestmenu;
		this.tableNum = tableNum;
		this.groupseat = groupseat;
		this.beansell = beansell;
		this.alltime = alltime;
		this.smokingArea = smokingArea;
		this.roasting = roasting;
	}

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
	
	public cafeVO(String businessNumber, String cafeName, String cafeAddress, String cafeTel, String ameIndex, String cafeHours,
			String bestmenu, String tableNum, String wifi, String groupseat, String beansell, String alltime, 
			String smokingArea, String roasting ) {
		this.businessNumber = businessNumber;
		this.cafeName = cafeName;
		this.cafeAddress = cafeAddress;
		this.cafeTel = cafeTel;
		this.ameIndex = ameIndex;
		this.cafeHours = cafeHours;
		this.bestmenu = bestmenu;
		this.tableNum = tableNum;
		this.groupseat = groupseat;
		this.beansell = beansell;
		this.alltime = alltime;
		this.smokingArea = smokingArea;
		this.roasting = roasting;
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

	public int getNum() {
		return num;
	}

	public String getAmeIndex() {
		return ameIndex;
	}

	public float getLat() {
		return lat;
	}

	public float getLng() {
		return lng;
	}

	public String getCafeHours() {
		return cafeHours;
	}

	public String getBestmenu() {
		return bestmenu;
	}

	public String getTableNum() {
		return tableNum;
	}

	public String getWifi() {
		return wifi;
	}

	public String getGroupseat() {
		return groupseat;
	}

	public String getBeansell() {
		return beansell;
	}

	public String getAlltime() {
		return alltime;
	}

	public String getSmokingArea() {
		return smokingArea;
	}

	public String getRoasting() {
		return roasting;
	}
	
	
	
	
	
}
