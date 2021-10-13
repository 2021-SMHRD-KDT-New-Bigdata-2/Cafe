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
	private String delivery;
	private String groupseat;
	private String beansell;
	private String companion;
	private String smokingArea;
	private String roasting;
	private String dessert;
	private String board;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String image5;
	private String image6;
	private String etc;

	

	public cafeVO(String bossName, String businessNumber, String bossTel, String cafeName, String cafeAddress,
			String cafeTel) {
		this.bossName = bossName;
		this.businessNumber = businessNumber;
		this.bossTel = bossTel;
		this.cafeName = cafeName;
		this.cafeAddress = cafeAddress;
		this.cafeTel = cafeTel;
	}
	
	// 
	public cafeVO(String businessNumber, String cafeName, String cafeAddress, String cafeTel, String ameIndex, String cafeHours,
			String bestmenu, String tableNum, String delivery, String groupseat, String beansell, String companion, String smokingArea, 
			String roasting, String dessert, String board, String image1, String image2, String image3, String image4, String image5, String image6, String etc ) {
		this.cafeName = cafeName;
		this.businessNumber = businessNumber;
		this.cafeAddress = cafeAddress;
		this.cafeTel = cafeTel;
		this.ameIndex = ameIndex;
		this.cafeHours = cafeHours;
		this.bestmenu = bestmenu;
		this.tableNum = tableNum;
		this.delivery = delivery;
		this.groupseat = groupseat;
		this.beansell = beansell;
		this.companion = companion;
		this.smokingArea = smokingArea;
		this.roasting = roasting;
		this.dessert = dessert;
		this.board = board;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.image5 = image5;
		this.image6 = image6;
		this.etc = etc;
	}
	
	

	// search ±â´É
	public cafeVO(int num, String businessNumber, String bossName, String bossTel, String cafeName, String cafeAddress,
			String cafeTel, String ameIndex, float lat, float lng, String cafeHours, String bestmenu, String tableNum,
			String delivery, String groupseat, String beansell, String companion, String smokingArea, String roasting,
			String dessert, String board, String image1, String image2, String image3, String image4, String image5,
			String image6,String etc) {
		super();
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
		this.delivery = delivery;
		this.groupseat = groupseat;
		this.beansell = beansell;
		this.companion = companion;
		this.smokingArea = smokingArea;
		this.roasting = roasting;
		this.dessert = dessert;
		this.board = board;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.image5 = image5;
		this.image6 = image6;
		this.etc = etc;
	}


	public String getEtc() {
		return etc;
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

	public String getDelivery() {
		return delivery;
	}

	public String getDessert() {
		return dessert;
	}

	public String getGroupseat() {
		return groupseat;
	}

	public String getBeansell() {
		return beansell;
	}

	public String getCompanion() {
		return companion;
	}

	public String getSmokingArea() {
		return smokingArea;
	}

	public String getRoasting() {
		return roasting;
	}
	
	public String getBoard() {
		return board;
	}

	public String getImage1() {
		return image1;
	}

	public String getImage2() {
		return image2;
	}

	public String getImage3() {
		return image3;
	}

	public String getImage4() {
		return image4;
	}

	public String getImage5() {
		return image5;
	}

	public String getImage6() {
		return image6;
	}
	
	
	
	
	
}
