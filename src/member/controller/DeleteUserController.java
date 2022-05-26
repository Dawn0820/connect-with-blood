package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class DeleteUserController
 */
@WebServlet("/delete.mem")
public class DeleteUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

request.setCharacterEncoding("UTF-8");
		
		String userPwd = request.getParameter("userPwd");

		
		//방법 2) session에 담겨있는 loginUser(로그인 회원정보) 객체에 있는 아이디 꺼내오기
		HttpSession session = request.getSession();
		String userId = ((Member)session.getAttribute("loginMember")).getUserId();
		
		int result = new MemberService().deleteMember(userId, userPwd);
		
		
		if(result>0) { 
			
			session.setAttribute("alertMsg", "정상적으로 탈퇴되었습니다.");
			session.removeAttribute("loginMember");
			response.sendRedirect(request.getContextPath());

		}else { 
			
			request.setAttribute("errorMsg", "회원 탈퇴를 실패하였습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			
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
