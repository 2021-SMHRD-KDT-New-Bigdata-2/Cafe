package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.cafeVO;
import com.model.memberDAO;


@WebServlet("/KstudyService")
public class KwifiService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String wifi = request.getParameter("theme");
		
		System.out.println("wifi: " + wifi);
		if(wifi.equals("1")) {
			memberDAO dao = new memberDAO();
			ArrayList<cafeVO> wifi_list =  dao.wifi(wifi);
			System.out.println("리스트 낫널 실행");
			HttpSession session = request.getSession();
			session.setAttribute("wifi_list", wifi_list);
		}else {
			//실행이 안될때 로직
			System.out.println("리스트 낫널 실패!");
		}
		
		
		
		
		
	}

}
