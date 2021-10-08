package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.cafeVO;
import com.model.memberDAO;




@WebServlet("/searchmapService")
public class searchmapService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");

		String cafename = request.getParameter("searchword");
		
		System.out.println("검색할 카페명: " + cafename);
		
		memberDAO dao = new memberDAO();
		ArrayList<cafeVO> cafe_list = dao.search(cafename);
		
		if (cafe_list!=null) {
			System.out.println("리스트 낫널 실행");
			HttpSession session = request.getSession();
			session.setAttribute("cafe_list", cafe_list);
			response.sendRedirect("searchmap.jsp");
			
			
		}
		
	}

}
