package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import oracle.net.aso.e;

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
						
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "campus_k4_1006";
			String password= "smhrd4";
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
	public int join(String id, String pw, String nickname, String tel, String bestMenu, String qna, String answer ) {
		
		try {
			getConnection();
			String sql = "insert into joinInfo values (joinInfo_num.nextval,?,?,?,?,?,?,?)";
			
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
	public int caferequest(String bossName, String businessNumber, String bossTel, String cafeName, String cafeAddress, String cafeTel) {
		
		try {
			getConnection();
			String sql = "insert into cafeRequest values(cafeRequest_num.nextval,?,?,?,?,?,?)";
			
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
	
	// ȸ���������� ���
	public int update(String pw,String tel,String nickname,String bestmenu,String answer,String id) {
		
		try {
			getConnection();
			String sql = "update joinInfo set pw=?,tel=?,nickname=?,bestmenu=?,answer=? where id=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,pw);
			psmt.setString(2,tel);
			psmt.setString(3,nickname);
			psmt.setString(4,bestmenu);
			psmt.setString(5,answer);
			psmt.setString(6,id);
			cnt = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	// ���� ī�� ã�� ���
	
	public ArrayList<cafeVO> search(String cafename) {
		ArrayList<cafeVO> cafe_list = new ArrayList<cafeVO>();
		try {
			getConnection();
			String sql = "select * from cafeRequest where cafeName=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,cafename);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				System.out.println("����Ʈ ����");
				int num = rs.getInt("num");
				String cafeName = rs.getString("cafeName");
				String cafeAddress = rs.getString("cafeAddress");
				String cafeTel = rs.getString("cafeTel");
					
				cafeVO vo = new cafeVO(num, cafeName, cafeAddress, cafeTel);
				cafe_list.add(vo);
				System.out.println("����Ʈ ���� ����");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cafe_list;
	}
	
}
