package member.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

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
 * Servlet implementation class Join
 */
@WebServlet("/join.mem")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("UTF-8");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd"); //String 으로 뺴주려고 전처리
	
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String userName = request.getParameter("userName");
	String userBirth = request.getParameter("userBirth");
	String userEmail = request.getParameter("userEmail");
	String userPhone = request.getParameter("userPhone");
	String userAddress = request.getParameter("userAddress");
	String userEnrollDate = request.getParameter("userEnrollDate");
	String userBloodtype = request.getParameter("userBloodtype");
	Date userLogindate = request.getParameter("userLogindate");
	Date userWithdate = request.getParameter("userWithdate");
	Date userSusdate = request.getParameter("userSusdate");
	String userStatus = request.getParameter("userStatus");
	
	
	Member m = new Member(userId,userPw,userName,userBirth,userEmail,userPhone,userAddress,userEnrollDate,userStatus,userBan,userGrade,userLogin);
	int result = new MemberService().enrollMember(m);
	//Date로 변환시 (later)
//	userEnrollDate = transFormat.parse(userEnrollDate);
//	userLogin = transFormat.parse(userLogin);
	
	if(result>0) {
		HttpSession session = request.getSession();
		session.setAttribute("alertMsg", "회원가입에 성공했습니다."); 
		
	}else {
		
		request.setAttribute("errorMsg", "회원가입에 실패하였습니다.");
		
		RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
		view.forward(request,response);
	
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
