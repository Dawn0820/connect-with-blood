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
 * Servlet implementation class ModifyController
 */
@WebServlet("/mody.mem")
public class ModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				request.setCharacterEncoding("UTF-8");
				
					String userId = request.getParameter("MuserId");
					String userPw = request.getParameter("MuserPw");
					String userName = request.getParameter("MuserName");
					String userBirth = request.getParameter("MuserBirth");
					String userEmail = request.getParameter("MuserEmail");
					String userPhone = request.getParameter("MuserPhone");
					String userAddress = request.getParameter("MuserAddress");
					String userBloodtype = request.getParameter("MuserBloodtype");
				 
				
				 Member m = new Member(userId,userPw,userName,userBirth,userEmail,userPhone,userAddress,userBloodtype);
				
				Member modifyM = new MemberService().modifyMem(m);
				
				if(modifyM == null) { 
					request.setAttribute("errorMsg", "회원정보 수정을 실패하였습니다.");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				}else {
					HttpSession session = request.getSession();
					session.setAttribute("loginMember", modifyM); 
					session.setAttribute("alertMsg", "회원정보 수정 완료!");
					
					response.sendRedirect(request.getContextPath()+"/mypage.mem");
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
