package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.memberDAO;
import com.model.memberVO;

@WebServlet("/BossLoginService")
public class BossLoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("euc-kr");
	
	String businessNumber = request.getParameter("businessNumber");
	String bossPw = request.getParameter("bossPw");
	
	memberDAO dao = new memberDAO();
	memberVO vo = dao.bossLogin(businessNumber,bossPw);
	
	if (vo!=null) {
		HttpSession session = request.getSession();
		session.setAttribute("bossLogin", vo);
		
		response.sendRedirect("cafeManager.jsp");
	}

	}

}
