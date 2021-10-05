package com.model;

public class memberVO {

	private String id;
	private String pw;
	private String nickname;
	private String tel;
	private String bestmenu;
	private String qna;
	private String answer;
	
	
	public memberVO(String id, String pw, String nickname, String tel, String bestmenu, String qna, String answer) {
		super();
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.tel = tel;
		this.bestmenu = bestmenu;
		this.qna = qna;
		this.answer = answer;
	}


	public memberVO(String id, String nickname) {
		super();
		this.id = id;
		this.nickname = nickname;
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


	public String getBestmenu() {
		return bestmenu;
	}


	public String getQna() {
		return qna;
	}


	public String getAnswer() {
		return answer;
	}
	
	
	
	
	
}
