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
	String evaluation = "";
	private String cafeName2;
	private String businessNumber;
	private String id;
	private int num;

	
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
				String get_tel = rs.getString("tel");
				
				vo = new memberVO(get_id, get_nickname,get_tel);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
	// ���� �α��� ���
	public memberVO bossLogin(String businessNumber, String bossPw) {
			
			try {
				getConnection();
				
				String sql = "select * from bossJoinInfo where businessNumber=? and bossPw=?";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1,businessNumber);
				psmt.setString(2,bossPw);
				
				rs = psmt.executeQuery();
				if (rs.next()) {
					System.out.println("�α��� ����!");
					
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
	
	// ���͵�� ���
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
		String keyword = "%"+cafename+"%";
		try {
			getConnection();
			String sql = "select * from cafeInfo where cafeName like ? ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,keyword);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				System.out.println("����Ʈ ����");
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
				System.out.println("��" + lat);
				System.out.println("��" + lng);
				cafeVO vo = new cafeVO(num, businessNumber, bossName, bossTel, cafeName, cafeAddress, cafeTel, ameIndex, lat, lng, cafeHours, bestMenu, tableNum, delivery, groupseat, beansell, companion, smokingArea, roasting, dessert, board, image1, image2, image3, image4, image5, image6,etc);
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
	
	
	
	
	/* Ű���� ajax �Ἥ �ϱ�
	public ArrayList<cafeVO> wifi(String wifi) {
		ArrayList<cafeVO> wifi_list = new ArrayList<cafeVO>();
		try {
			
				getConnection();
				String sql = "select * from cafeInfo where wifi=?";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,wifi);
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					System.out.println("wifi���� ����");
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
					System.out.println("wifi���� ���� ����");
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
	// �������
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
	
	//�����޼���

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
// ������ �� �޼��� Ȯ�� �޼ҵ�
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
// ������ �߱�
public int stamp(String businessNumber, String tel, String cafeName) {
	
	try {
		getConnection();
		String sql = "insert into stamp values (stamp_num.nextval,?,?,?,?)";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,tel);
		psmt.setString(2,businessNumber);
		psmt.setString(3,cafeName);
		psmt.setInt(4,0);
		
		cnt = psmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}return cnt;
	
}

// ������ �ʱ�ȭ
public int resetStamp(String businessNumber, String tel) {
	try {
		getConnection();
		String sql = "update stamp set allStamp=0 where businessNumber=? and tel=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,businessNumber);
		psmt.setString(2,tel);
		
		cnt = psmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}return cnt;
}

// ������ �߰�
public int addStamp(String businessNumber, String tel) {
	try {
		getConnection();
		String sql = "update stamp set allStamp=allStamp+1 where businessNumber=? and tel=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,businessNumber);
		psmt.setString(2,tel);
		
		cnt = psmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}return cnt;
}

	//�򰡳ֱ� ���
public int evaluation_insert(String nickname, String businessNumber, String cafeName, String result) {
	try {
		getConnection();
		String sql = "insert into evaluation values (evaluation_num.nextval,?,?,?,?)";
			
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,nickname);
		psmt.setString(2,businessNumber);
		psmt.setString(3,cafeName);
		psmt.setString(4,result);
		System.out.println("�� �ֱ� ����!");
		
		cnt = psmt.executeUpdate();
			
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return cnt;
	}

//�� ������ Ȯ��
public ArrayList<stampVO> myStamp(String tel) {
	ArrayList<stampVO> stamp_list = new ArrayList<stampVO>();
	try {
		getConnection();
		String sql = "select cafeName, allStamp from stamp where tel=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,tel);
		
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			String cafeName = rs.getString("cafeName");
			int allStamp = rs.getInt("allStamp");
			
			stampVO vo = new stampVO(cafeName, allStamp);
			stamp_list.add(vo);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return stamp_list;

	}

// �� �ҷ����� ���
public ArrayList<evalVO> evaluation_select(String cafeName) {
	ArrayList<evalVO> eval_list = new ArrayList<evalVO>();
	try {
		getConnection();
		String sql = "select * from evaluation where cafeName=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,cafeName);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			int num = rs.getInt("num");
			String nickname = rs.getString("nickname");
			String businessNumber = rs.getString("businessNumber");
			String cafeName2 = rs.getString("cafeName");
			String evaluation = rs.getString("evaluation");
			System.out.println("�� �ҷ����� ����:" + nickname);
			System.out.println("�� �ҷ����� ����:" + businessNumber);
			System.out.println("�� �ҷ����� ����:" + cafeName2);
			System.out.println("�� �ҷ����� ����:" + evaluation);
			
			evalVO vo = new evalVO(num, nickname, businessNumber, cafeName2, evaluation);
			eval_list.add(vo);
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return eval_list;

}


// �����Ǻ� �޼ҵ�
public boolean subscribeCheck(String id, String businessNumber) {
	boolean subsCheck = false;
	try {
		getConnection();
		String sql = "select * from subscribe where id=? and businessNumber=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,id);
		psmt.setString(2,businessNumber);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			subsCheck = true;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return subsCheck;
}
// �������Ǻ� �޼ҵ�
public boolean stampCheck(String tel, String businessNumber) {
	boolean stampCheck = false;
	try {
		getConnection();
		String sql = "select * from stamp where tel=? and businessNumber=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,tel);
		psmt.setString(2,businessNumber);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			stampCheck = true;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return stampCheck;
}
// �������� �޼ҵ�

public int removeSubscribe(String id, String businessNumber) {
	try {
		getConnection();
		String sql = "delete from subscribe where id=? and businessNumber=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,id);
		psmt.setString(2,businessNumber);
		cnt = psmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return cnt;
}



	
	
	
}

