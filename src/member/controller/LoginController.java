package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.mem")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId"); 
		String userPw = request.getParameter("userPw");
		
		Member loginMember = new MemberService().loginMember(userId,userPw);
		
<<<<<<< HEAD
		

		if(loginUser==null) {
			request.setAttribute("errorMsg", "로그인 실패.");
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
=======
>>>>>>> branch 'master' of https://github.com/Dawn0820/connect-with-blood.git

<<<<<<< HEAD
			request.getRequestDispatcher("views/main.jsp").forward(request, response);
=======
//		System.out.println(loginMember);
>>>>>>> branch 'master' of https://github.com/Dawn0820/connect-with-blood.git

		
<<<<<<< HEAD
		if(loginMember==null) { 
			request.setAttribute("errorMsg", "�α��ο� �����Ͽ����ϴ�.");

			
=======
		if(loginUser==null) {
			request.setAttribute("errorMsg", "로그인에 실패하였습니다.");

>>>>>>> branch 'master' of https://github.com/Dawn0820/connect-with-blood.git
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			
			view.forward(request, response);
		
		}else { 
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect(request.getContextPath());
			
//			System.out.println(userId);
	}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
