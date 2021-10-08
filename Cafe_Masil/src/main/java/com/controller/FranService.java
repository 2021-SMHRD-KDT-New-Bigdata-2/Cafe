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

		request.setCharacterEncoding("euc-kr");
		
		String businessNumber = request.getParameter("businessNumber");
		String bossName = request.getParameter("bossName");
		String bossTel = request.getParameter("bossTel");
		String cafeName = request.getParameter("cafeName");
		String cafeAddress = request.getParameter("cafeAddress");
		String cafeTel = request.getParameter("cafeTel");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.cafeInfo(businessNumber, bossName, bossTel, cafeName, cafeAddress, cafeTel);
		
		if (cnt>0) {
			System.out.println("가맹 등록 신청 완료!");
			response.sendRedirect("main.jsp");
		}
		
				
		
	}

}
