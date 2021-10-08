package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.cafeVO;
import com.model.memberDAO;

@WebServlet("/infoService")
public class infoService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String businessNumber = request.getParameter("businessNumber");
		memberDAO dao = new memberDAO();
		ArrayList<cafeVO> info_list =  dao.detailInfo(businessNumber);
		if (info_list!=null) {
			System.out.println("리스트 낫널 실행");
			HttpSession session = request.getSession();
			session.setAttribute("info_list", info_list);
			response.sendRedirect("detailInfo.jsp");
			
			
		}
		
		
	}

}
