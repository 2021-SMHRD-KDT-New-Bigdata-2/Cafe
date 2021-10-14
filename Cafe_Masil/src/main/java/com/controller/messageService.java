package com.controller;

import java.io.IOException;
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
		request.setCharacterEncoding("euc-kr");
		String businessNumber = request.getParameter("businessNumber");
		String message = request.getParameter("message");
		System.out.print(businessNumber);
		System.out.print(message);
		
		memberDAO dao = new memberDAO();
		int cnt = dao.subscribe(businessNumber, message);
		
		if(cnt>0) {
			System.out.print("전송성공");
			response.sendRedirect("cafeManager.jsp");
		}else {
			
		}
		
		
		
	}

}
