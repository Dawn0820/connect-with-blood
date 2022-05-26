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
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd"); //String ���� ���ַ��� ��ó��
	
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String userName = request.getParameter("userName");
	String userBirth = request.getParameter("userBirth");
	String userEmail = request.getParameter("email")+"@"+request.getParameter("Edomains");
	String userPhone = request.getParameter("mPhone1")+request.getParameter("mPhone2")+request.getParameter("mPhone3");
	String userAddress = request.getParameter("userAddress");
	String userBloodtype = request.getParameter("blood1")+request.getParameter("blood2");
	
//	System.out.println(userId);
//	System.out.println(userPw);
//	System.out.println(userName);
//	System.out.println(userBirth);
//	System.out.println(userEmail);
//	System.out.println(userPhone);
//	System.out.println(userAddress);
//	System.out.println(userBloodtype); 	
	
	Member m = new Member(userId,userPw,userName,userBirth,userEmail,userPhone,userAddress,userBloodtype);
	int result = new MemberService().enrollMember(m);

	
	if(result>0) {
		
		HttpSession session = request.getSession();
		session.setAttribute("alertMsg", "ȸ�����Կ� �����߽��ϴ�."); 
		
		RequestDispatcher view = request.getRequestDispatcher("views/main.jsp");
		view.forward(request,response);
		
	}else {
		
		request.setAttribute("errorMsg", "ȸ�����Կ� �����Ͽ����ϴ�.");
		
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
