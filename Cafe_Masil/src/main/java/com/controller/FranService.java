package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.memberDAO;
import com.model.memberVO;


@WebServlet("/FranService")
public class FranService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String bossname = request.getParameter("bossname");
		String businessnumber = request.getParameter("businessNumber");
		String bosstel = request.getParameter("bosstel");
		String cafename = request.getParameter("cafeName");
		String cafeaddress = request.getParameter("cafeaddress");
		String cafetel = request.getParameter("cafetel");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.caferequest(bossname, businessnumber, bosstel, cafename, cafeaddress, cafetel);
		
		if (cnt>0) {
			System.out.println("가맹 등록 신청 완료!");
			response.sendRedirect("main.jsp");
		}
		
				
		
	}

}
