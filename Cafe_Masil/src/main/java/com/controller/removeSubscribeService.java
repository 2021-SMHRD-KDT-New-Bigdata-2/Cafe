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

		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String businessNumber = request.getParameter("businessNumber");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.removeSubscribe(id, businessNumber);
		PrintWriter out = response.getWriter();
		
		if (cnt>0) {
			out.print("<script>"
					 + "alert('�������� �Ϸ�!');"
					 + "location.href='detailInfo.jsp';"
					 + "</script>");
		}else {
			out.print("<script>"
					 + "alert('�������� ����');"
					 + "location.href='detailInfo.jsp';"
					 + "</script>");
		}
		
		
		
	}

}