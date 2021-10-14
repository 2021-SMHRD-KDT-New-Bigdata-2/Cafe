package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.memberDAO;

@WebServlet("/stampAddService")
public class stampAddService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String businessNumber = request.getParameter("businessNumber");
		String tel = request.getParameter("tel");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.addStamp(businessNumber,tel);
		if(cnt>0) {
			response.sendRedirect("cafeManager.jsp");
		}
	
	
	}

}
