package com.douzone.emaillist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;


public class EmaillistServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a"); // 1.제어이동
		if("form".equals(action)) { // 2. 제어 연장
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/form.jsp");
			rd.forward(request, response);
		}else if("add".equals(action)) {
			
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			
			EmaillistVo vo = new EmaillistVo();
			vo.setFirstName(firstName);
			vo.setLastName(lastName);
			vo.setEmail(email);
			
			new EmaillistDao().insert(vo);
			response.sendRedirect("/emaillist02/el");
		}
		else {
			// 디폴트 사이트? 메인에서 보여줌. /el?a= "여기"에 무엇을 치든 index로 돌아감.
			List<EmaillistVo> list = new EmaillistDao().findAll();
			request.setAttribute("list", list); // request에 리스트 담음
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp"); // 3.요청분기
			rd.forward(request, response); // 4.forward : jsp 코드가 실행됨
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
