package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		request.setCharacterEncoding("euc-kr");
		
		response.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String tel = request.getParameter("tel");
		String bestMenu = request.getParameter("bestMenu");
		String qna = request.getParameter("qna");
		String answer = request.getParameter("answer");
		
		System.out.println("회원가입성공!");
		System.out.println("email:" + id);
		System.out.println("pw: " + pw);
		System.out.println("nickname: " + nickname);
		System.out.println("tel: " + tel);
		System.out.println("bestMenu: " + bestMenu);
		System.out.println("qna: " + qna);
		System.out.println("answer: " + answer);
		
		memberDAO dao = new memberDAO();
		int cnt = dao.join(id, pw, nickname, tel, bestMenu, qna, answer);
		PrintWriter out = response.getWriter();
		
		if (cnt>0) {
			out.print("<script>"
					 + "alert('회원가입 성공!');"
					 + "location.href='main.jsp';"
					 + "</script>");
		}else {
			out.print("<script>"
					 + "alert('회원가입 실패!');"
					 + "location.href='main.jsp';"
					 + "</script>");
		}
		
		
		
	}

}
