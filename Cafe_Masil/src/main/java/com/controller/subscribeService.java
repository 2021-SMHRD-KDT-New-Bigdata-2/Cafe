package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.memberDAO;

@WebServlet("/subscribeService")
public class subscribeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String businessNumber = request.getParameter("businessNumber");
		String Id = request.getParameter("id");
		String cafeName = request.getParameter("cafeName");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.subscribe(businessNumber, Id, cafeName);
		if(cnt>0) {
			response.sendRedirect("detailInfo.jsp");
		}else {
			
		}
		
	}

}
