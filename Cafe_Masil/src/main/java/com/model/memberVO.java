package com.model;

public class memberVO {
	
	private int num;
	private String id;
	private String pw;
	private String nickname;
	private String tel;
	private String bestMenu;
	private String qna;
	private String answer;
	private String businessNumber;
	
	
	public memberVO(int num, String id, String pw, String nickname, String tel, String bestMenu, String qna, String answer) {
		super();
		this.num = num;
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.tel = tel;
		this.bestMenu = bestMenu;
		this.qna = qna;
		this.answer = answer;
	}

	

	public memberVO(String pw, String nickname, String tel, String bestMenu, String answer) {
		super();
		this.pw = pw;
		this.nickname = nickname;
		this.tel = tel;
		this.bestMenu = bestMenu;
		this.answer = answer;
	}



	public memberVO(String id, String nickname) {
		super();
		this.id = id;
		this.nickname = nickname;
	}
	
	public memberVO(String businessNumber) {
		super();
		this.businessNumber = businessNumber;
	}
	
	public String getBusinessNumber() {
		return businessNumber;
	}

	public int getNum() {
		return num;
	}

	public String getId() {
		return id;
	}


	public String getPw() {
		return pw;
	}


	public String getNickname() {
		return nickname;
	}


	public String getTel() {
		return tel;
	}


	public String getBestMenu() {
		return bestMenu;
	}


	public String getQna() {
		return qna;
	}


	public String getAnswer() {
		return answer;
	}
	
	
	
	
	
}
