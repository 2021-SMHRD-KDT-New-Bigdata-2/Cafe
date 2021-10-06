package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.memberDAO;
import com.model.memberVO;


@WebServlet("/updateService")
public class updateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		memberVO vo = (memberVO)session.getAttribute("member");
		response.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html; charset=UTF-8");
		
		String id = vo.getId();
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String tel = request.getParameter("tel");
		String bestmenu = request.getParameter("bestmenu");
		String answer = request.getParameter("answer");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.update(pw, tel, nickname, bestmenu, answer,id);
		PrintWriter out = response.getWriter();
		if (cnt>0) {
			System.out.println("회원정보수정 성공!");
			out.print("<script>"
					 + "alert('회원정보수정 성공!');"
					 + "location.href='main.jsp';"
					 + "</script>");
		}else {
			System.out.println("회원정보수정 실패!");
			out.print("<script>"
					 + "alert('회원정보수정 실패!');"
					 + "location.href='update.jsp';"
					 + "</script>");
		}
		
	}

}
