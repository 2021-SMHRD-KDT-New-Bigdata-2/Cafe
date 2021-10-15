package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		PrintWriter out = response.getWriter();
		if (cnt>0) {
			out.print("<script>"
					 + "alert('스탬프 1개 적립!');"
					 + "location.href='cafeManager.jsp';"
					 + "</script>");
		}else {
			out.print("<script>"
					 + "alert('스탬프 적립 실패');"
					 + "location.href='cafeManager.jsp';"
					 + "</script>");
		}
	
	
	}

}
