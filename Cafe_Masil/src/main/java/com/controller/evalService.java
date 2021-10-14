package com.controller;

import java.io.IOException;
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
		HttpSession session = request.getSession();
		String[] eval = request.getParameterValues("evaluation");
		
		String result = "";
		
		for (int i = 0; i<eval.length; i++) {
			result += eval[i] + "/";
		}
		
		memberDAO dao = new memberDAO();
		int cnt = dao.evaluation_insert(result);
		
		if (cnt>0) {
			String evaluation = dao.evaluation_select(cafeName);
			System.out.println(evaluation.split("/"));
		}
	
		
		
	}

}
