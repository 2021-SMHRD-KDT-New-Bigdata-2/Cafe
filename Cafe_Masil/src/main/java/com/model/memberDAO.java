package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class memberDAO {
	
	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	memberVO vo = null;

	
	// 기능이 메서드임
	// DB연결 기능
	public void getConnection() {
		
		try {
			// 1. JDBC 드라이버 동적 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
						
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String password= "hr";
			// 2. 데이터베이스 연결 객체(Connection) 생성
			conn = DriverManager.getConnection(url,user,password);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
	}
	
	// DB닫기 기능
	public void close() {
		try {
			if (rs!=null) {
				rs.close();
			}
			if (psmt!=null) {
				psmt.close();
			}
			if (conn!=null) {
				conn.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
	}
	
	// 회원가입 기능
	public int join(String id, String pw, String nickname, String tel, String bestMenu, String qna, String answer ) {
		
		try {
			getConnection();
			String sql = "insert into joinInfo values (?,?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			psmt.setString(2,pw);
			psmt.setString(3,nickname);
			psmt.setString(4,tel);
			psmt.setString(5,bestMenu);
			psmt.setString(6,qna);
			psmt.setString(7,answer);
			
			cnt = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return cnt;
		
	}

	// 로그인 기능
	public memberVO login(String id, String pw) {
		
		try {
			getConnection();
			
			String sql = "select * from joinInfo where id=? and pw=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,id);
			psmt.setString(2,pw);
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				System.out.println("로그인 성공!");
				
				String get_id = rs.getString("id");
				String get_nickname = rs.getString("nickname");
				
				vo = new memberVO(get_id, get_nickname);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
	// 가맹등록 기능
	public int caferequest(String bossName, String businessNumber, String bossTel, String cafeName, String cafeAddress, String cafeTel) {
		
		try {
			getConnection();
			String sql = "insert into cafeRequest values(?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,bossName);
			psmt.setString(2,businessNumber);
			psmt.setString(3,bossTel);
			psmt.setString(4,cafeName);
			psmt.setString(5,cafeAddress);
			psmt.setString(6,cafeTel);
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	
}
