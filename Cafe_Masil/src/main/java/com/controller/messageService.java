package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.memberDAO;


@WebServlet("/messageService")
public class messageService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html; charset=UTF-8");
		
		String businessNumber = request.getParameter("businessNumber");
		String message = request.getParameter("message");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.subscribe(businessNumber, message);
		
		PrintWriter out = response.getWriter();
		if (cnt>0) {
			out.print("<script>"
					 + "alert('구독자에게 메세지 전송 완료!');"
					 + "location.href='cafeManager.jsp';"
					 + "</script>");
		}else {
			out.print("<script>"
					 + "alert('메세지 전송 실패');"
					 + "location.href='cafeManager.jsp';"
					 + "</script>");
		}
		
		
		
	}

}
