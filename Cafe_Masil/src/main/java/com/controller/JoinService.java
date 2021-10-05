package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.memberDAO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String tel = request.getParameter("tel");
		String bestmenu = request.getParameter("bestmenu");
		String qna = request.getParameter("qna");
		String answer = request.getParameter("answer");
		
		System.out.println("회원가입성공!");
		System.out.println("email:" + id);
		System.out.println("pw: " + pw);
		System.out.println("tel: " + nickname);
		System.out.println("address: " + tel);
		System.out.println("address: " + bestmenu);
		System.out.println("address: " + qna);
		System.out.println("address: " + answer);
		
		memberDAO dao = new memberDAO();
		int cnt = dao.join(id, pw, nickname, tel, bestmenu, qna, answer);
		
		if (cnt>0) {
			request.setAttribute("nickname", nickname);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
			rd.forward(request, response);
		}
		
		
		
	}

}
