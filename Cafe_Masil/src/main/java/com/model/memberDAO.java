package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


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
						
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "campus_k4_1006";
			String password= "smhrd4";
			// 2. 데이터베이스 연결 객체(Connection) 생성
			conn = DriverManager.getConnection(url,user,password);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
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
	
	// 사장 로그인 기능
	public memberVO bossLogin(String businessNumber, String bossPw) {
			
			try {
				getConnection();
				
				String sql = "select * from bossJoinInfo where businessNumber=? and bossPw=?";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1,businessNumber);
				psmt.setString(2,bossPw);
				
				rs = psmt.executeQuery();
				if (rs.next()) {
					System.out.println("로그인 성공!");
					
					String get_businessNumber = rs.getString("businessNumber");
					
					vo = new memberVO(get_businessNumber);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				close();
			}
			return vo;
		}
	
	// 가맹등록 기능
	public int cafeInfo(String businessNumber,String bossName, String bossTel, String cafeName, String cafeAddress, String cafeTel) {
		
		try {
			getConnection();
			String sql = "insert into cafeInfo values(cafeInfo_num.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,businessNumber);
			psmt.setString(2,bossName);
			psmt.setString(3,bossTel);
			psmt.setString(4,cafeName);
			psmt.setString(5,cafeAddress);
			psmt.setString(6,cafeTel);
			psmt.setString(7,null);
			psmt.setString(8,null);
			psmt.setString(9,null);
			psmt.setString(10,null);
			psmt.setString(11,null);
			psmt.setString(12,null);
			psmt.setString(13,null);
			psmt.setString(14,null);
			psmt.setString(15,null);
			psmt.setString(16,null);
			psmt.setString(17,null);
			psmt.setString(18,null);
			psmt.setString(19,null);
			psmt.setString(20,null);
			psmt.setString(21,null);
			psmt.setString(22,null);
			psmt.setString(23,null);
			psmt.setString(24,null);
			psmt.setString(25,null);
			psmt.setString(26,null);
			psmt.setString(27,null);
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	// 회원정보수정 기능
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
	
	// 가맹 카페 찾기 기능
	public ArrayList<cafeVO> search(String cafename) {
		ArrayList<cafeVO> cafe_list = new ArrayList<cafeVO>();
		try {
			getConnection();
			String sql = "select * from cafeInfo where cafeName=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,cafename);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				System.out.println("셀렛트 실행");
				int num = rs.getInt("num");
				String businessNumber = rs.getString("businessNumber");
				String bossName = rs.getString("bossName");
				String bossTel = rs.getString("bossTel");
				String cafeName = rs.getString("cafeName");
				String cafeAddress = rs.getString("cafeAddress");
				String cafeTel = rs.getString("cafeTel");
				String ameIndex = rs.getString("ameIndex");
				float lat = rs.getFloat("lat");
				float lng = rs.getFloat("lng");
				String cafeHours = rs.getString("cafeHours");
				String bestMenu = rs.getString("bestMenu");
				String tableNum = rs.getString("tableNum");
				String delivery = rs.getString("delivery");
				String groupseat = rs.getString("groupseat");
				String beansell = rs.getString("beansell");
				String companion = rs.getString("companion");
				String smokingArea = rs.getString("smokingArea");
				String roasting = rs.getString("roasting");
				String dessert = rs.getString("dessert");
				String board = rs.getString("board");
				String image1 = rs.getString("image1");
				String image2 = rs.getString("image2");
				String image3 = rs.getString("image3");
				String image4 = rs.getString("image4");
				String image5 = rs.getString("image5");
				String image6 = rs.getString("image6");
				String etc = rs.getString("etc");
				System.out.println("위" + lat);
				System.out.println("경" + lng);
				cafeVO vo = new cafeVO(num, businessNumber, bossName, bossTel, cafeName, cafeAddress, cafeTel, ameIndex, lat, lng, cafeHours, bestMenu, tableNum, delivery, groupseat, beansell, companion, smokingArea, roasting, dessert, board, image1, image2, image3, image4, image5, image6,etc);
				cafe_list.add(vo);
				System.out.println("셀렛트 에드 종료");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cafe_list;
	}
	
	
	
	
	/* 키워드 ajax 써서 하기
	public ArrayList<cafeVO> wifi(String wifi) {
		ArrayList<cafeVO> wifi_list = new ArrayList<cafeVO>();
		try {
			
				getConnection();
				String sql = "select * from cafeInfo where wifi=?";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,wifi);
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					System.out.println("wifi여부 실행");
					int num = rs.getInt("num");
					String businessNumber = rs.getString("businessNumber");
					String bossName = rs.getString("bossName");
					String bossTel = rs.getString("bossTel");
					String cafeName = rs.getString("cafeName");
					String cafeAddress = rs.getString("cafeAddress");
					String cafeTel = rs.getString("cafeTel");
					String ameIndex = rs.getString("ameIndex");
					float lat = rs.getFloat("lat");
					float lng = rs.getFloat("lng");
					String cafeHours = rs.getString("cafeHours");
					String bestMenu = rs.getString("bestMenu");
					String tableNum = rs.getString("tableNum");
					String groupseat = rs.getString("groupseat");
					String beansell = rs.getString("beansell");
					String companion = rs.getString("companion");
					String smokingArea = rs.getString("smokingArea");
					String roasting = rs.getString("roasting");
					String subsidy = rs.getString("subsidy");
					String 
					
					cafeVO vo = new cafeVO(num,businessNumber, bossName, bossTel, cafeName, cafeAddress, cafeTel, ameIndex, lat, lng, cafeHours, bestMenu, tableNum, groupseat, beansell, alltime, smokingArea, roasting);
					wifi_list.add(vo);
					System.out.println("wifi여부 실행 종료");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return wifi_list;
	}
 */
	public ArrayList<cafeVO> detailInfo(String businessNumber) {
		ArrayList<cafeVO> info_list = new ArrayList<cafeVO>();
		try {
			getConnection();
			String sql = "select cafeName, cafeAddress, cafeTel, ameIndex, cafeHours, bestMenu, tableNum, delivery, groupseat, beansell, companion, smokingArea, roasting, dessert, board, image1,image2,image3,image4,image5,image6,etc from cafeInfo where businessNumber=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,businessNumber);
			rs = psmt.executeQuery();
			while(rs.next()) {
				String cafeName = rs.getString("cafeName");
				String cafeAddress = rs.getString("cafeAddress");
				String cafeTel = rs.getString("cafeTel");
				String ameIndex = rs.getString("ameIndex");
				String cafeHours = rs.getString("cafeHours");
				String bestMenu = rs.getString("bestMenu");
				String tableNum = rs.getString("tableNum");
				String delivery = rs.getString("delivery");
				String groupseat = rs.getString("groupseat");
				String beansell = rs.getString("beansell");
				String companion = rs.getString("companion");
				String smokingArea = rs.getString("smokingArea");
				String roasting = rs.getString("roasting");
				String dessert = rs.getString("dessert");
				String board = rs.getString("board");
				String image1 = rs.getString("image1");
				String image2 = rs.getString("image2");
				String image3 = rs.getString("image3");
				String image4 = rs.getString("image4");
				String image5 = rs.getString("image5");
				String image6 = rs.getString("image6");
				String etc = rs.getString("etc");
						
				
				cafeVO vo = new cafeVO(businessNumber,cafeName, cafeAddress, cafeTel, ameIndex, cafeHours, bestMenu, tableNum, delivery, groupseat, beansell, companion, smokingArea, roasting, dessert, board, image1, image2, image3, image4, image5, image6,etc);
				info_list.add(vo);	
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			close();
		}
		return info_list;
	}
	// 구독기능
public int subscribe(String businessNumber, String id, String cafeName) {
		
		try {
			getConnection();
			String sql = "insert into subscribe values (joinInfo_num.nextval,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			psmt.setString(2,businessNumber);
			psmt.setString(3,null);
			psmt.setString(4,cafeName);
			
			cnt = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return cnt;
		
	}
	
	//구독메세지

public int subscribe(String businessNumber, String message) {
	
	try {
		getConnection();
		String sql = "update subscribe set message=? where businessNumber=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,message);
		psmt.setString(2,businessNumber);
		
		cnt = psmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}return cnt;
	
}
// 나에게 온 메세지 확인 메소드
public ArrayList<messageVO> showMessage(String id) {
	ArrayList<messageVO> message_list = new ArrayList<messageVO>();
	try {
		getConnection();
		String sql = "select cafeName, message from subscribe where id=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,id);
		
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			String cafeName = rs.getString("cafeName");
			String message = rs.getString("message");
			
			messageVO vo = new messageVO(cafeName, message);
			message_list.add(vo);
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}return message_list;
	
}
// 스탬프 발급
public int stamp(String businessNumber, String tel, String cafeName) {
	
	try {
		getConnection();
		String sql = "insert into stamp values (stamp_num.nextval,?,?,?,?,?)";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,tel);
		psmt.setString(2,businessNumber);
		psmt.setString(3,cafeName);
		psmt.setLong(4,0);
		psmt.setLong(5,0);
		
		cnt = psmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}return cnt;
	
}
}
