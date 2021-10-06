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


@WebServlet("/updateService")
public class updateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		memberVO vo = (memberVO)session.getAttribute("member");
		
		String id = vo.getId();
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String tel = request.getParameter("tel");
		String bestmenu = request.getParameter("bestmenu");
		String answer = request.getParameter("answer");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.update(pw, tel, nickname, bestmenu, answer,id);
		if (cnt>0) {
			System.out.println("회원정보수정 성공!");
			response.sendRedirect("main.html");
		}
		
	}

}
