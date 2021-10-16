package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.model.cafeVO;
import com.model.evalVO;
import com.model.memberDAO;
import com.model.memberVO;


@WebServlet("/evalService")
public class evalService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		response.setCharacterEncoding("euc-kr");
		response.setContentType("application/json");
		
		String[] eval = request.getParameterValues("evaluation");
		String nickname = request.getParameter("nickname");
		String businessNumber = request.getParameter("businessNumber");
		String cafeName = request.getParameter("cafeName");
		
		System.out.println("eval" + eval);
		System.out.println("nickname 불러오기: " + nickname);
		System.out.println("businessNumber: " + businessNumber);
		System.out.println("cafeName: " + cafeName);
		
		
		
		String result = "";
		for (int i = 0; i<eval.length; i++) {
			result += eval[i] + ". ";
		}
		
		memberDAO dao = new memberDAO();
		int cnt = dao.evaluation_insert(nickname,businessNumber,cafeName,result);
		if (cnt>0) {
			ArrayList<evalVO> eval_list = dao.evaluation_select(cafeName);
			Gson gson = new Gson();
			new Gson().toJson(eval_list, response.getWriter());

			}
		
		
		}
	
		
		
	}


