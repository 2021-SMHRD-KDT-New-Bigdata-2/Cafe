package com.model;

public class evalVO {

	private String evaluation;
	private String clean;
	private String area;
	private String dessert;
	private String service;
	private String reVisit;
	private String picture;
	private String notGood;
	
	public evalVO(String evaluation, String clean, String area, String dessert, String service, String reVisit,
			String picture, String notGood) {
		this.evaluation = evaluation;
		this.clean = clean;
		this.area = area;
		this.dessert = dessert;
		this.service = service;
		this.reVisit = reVisit;
		this.picture = picture;
		this.notGood = notGood;
	}

	public String getEvaluation() {
		return evaluation;
	}

	public String getClean() {
		return clean;
	}

	public String getArea() {
		return area;
	}

	public String getDessert() {
		return dessert;
	}

	public String getService() {
		return service;
	}

	public String getReVisit() {
		return reVisit;
	}

	public String getPicture() {
		return picture;
	}

	public String getNotGood() {
		return notGood;
	}
	
	
	

	

}
