package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.memberDAO;

@WebServlet("/removeSubscribe")
public class removeSubscribeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String businessNumber = request.getParameter("businessNumber");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.removeSubscribe(id, businessNumber);
		PrintWriter out = response.getWriter();
		
		if (cnt>0) {
			out.print("<script>"
					 + "alert('구독해제 완료!');"
					 + "location.href='detailInfo.jsp';"
					 + "</script>");
		}else {
			out.print("<script>"
					 + "alert('구독해제 실패');"
					 + "location.href='detailInfo.jsp';"
					 + "</script>");
		}
		
		
		
	}

}
