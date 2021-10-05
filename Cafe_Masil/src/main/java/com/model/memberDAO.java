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

	
	// ����� �޼�����
	// DB���� ���
	public void getConnection() {
		
		try {
			// 1. JDBC ����̹� ���� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");
						
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String password= "hr";
			// 2. �����ͺ��̽� ���� ��ü(Connection) ����
			conn = DriverManager.getConnection(url,user,password);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
	}
	
	// DB�ݱ� ���
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
	
	// ȸ������ ���
	public int join(String id, String pw, String nickname, String tel, String bestmenu, String qna, String answer ) {
		
		try {
			getConnection();
			String sql = "insert into joinInfo values (?,?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			psmt.setString(2,pw);
			psmt.setString(3,nickname);
			psmt.setString(4,tel);
			psmt.setString(5,bestmenu);
			psmt.setString(6,qna);
			psmt.setString(7,answer);
			
			cnt = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return cnt;
		
	}

	// �α��� ���
	public memberVO login(String id, String pw) {
		
		try {
			getConnection();
			
			String sql = "select * from joinInfo where id=? and pw=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,id);
			psmt.setString(2,pw);
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				System.out.println("�α��� ����!");
				
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
	
	// ���͵�� ���
	public int caferequest(String bossname, String businessnumber, String bosstel, String cafename, String cafeaddress, String cafetel) {
		
		try {
			getConnection();
			String sql = "insert into cafeRequest values(?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,bossname);
			psmt.setString(2,businessnumber);
			psmt.setString(3,bosstel);
			psmt.setString(4,cafename);
			psmt.setString(5,cafeaddress);
			psmt.setString(6,cafetel);
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	
}
