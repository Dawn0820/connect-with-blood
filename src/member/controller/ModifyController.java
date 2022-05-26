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
				
				 String userName = request.getParameter("userName");
				 String userEmail = request.getParameter("userEmail");
				 String userId = request.getParameter("userId");
				 String userBirth = request.getParameter("userBirth");
				 String userAddress = request.getParameter("userAddress");
				 String userPhone = request.getParameter("userPhone");
				 String userBloodtype = request.getParameter("userBloodtype");

				 String bloodNo = request.getParameter("bloodNo");
				 int bloodCount = Integer.parseInt(request.getParameter("bloodCount"));
				 int bloodWh = Integer.parseInt(request.getParameter("bloodWh"));
				 int bloodIn = Integer.parseInt(request.getParameter("bloodIn"));
				 
				
				Member m = new Member(userId,userName,userBirth,userAddress,userEmail,userPhone,userBloodtype,  bloodCount,bloodWh,bloodIn);
				
				Member modifyM = new MemberService().modifyMem(m);
				
				if(modifyM == null) { 
					request.setAttribute("errorMsg", "회원정보 수정에 실패하였습니다.");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				}else { //성공
					HttpSession session = request.getSession();
					session.setAttribute("modifyM", modifyM); 
					session.setAttribute("alertMsg", "회원정보 수정 완료");
					
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
