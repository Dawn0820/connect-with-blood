package member.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String userName = request.getParameter("userName");
	String userBirth = request.getParameter("userBirth");
	String userEmail = request.getParameter("userEmail");
	String userPhone = request.getParameter("userPhone");
	String userAddress = request.getParameter("userAddress");
	Date userEnrollDate = request.getParameter("userEnrollDate");
	
	
	
	
	
	
	
//	private String userId;				//	USER_ID	VARCHAR2(20 BYTE)
//	private String userPw;				//USER_PW	VARCHAR2(20 BYTE)
//	private String userName;			//	USER_NAME	VARCHAR2(20 BYTE)
//	private String userBirth;			//	USER_BIRTH	VARCHAR2(20 BYTE)
//	private String userEmail;			//	USER_EMAIL	VARCHAR2(50 BYTE)
//	private String userPhone;			//	USER_PHONE	VARCHAR2(20 BYTE)
//	private String userAdderess;		//	USER_ADDRESS	VARCHAR2(500 BYTE)
//	private Date userEnrollDate;		//	USER_ENROLLDATE	DATE
//	private int userStatus;				//	USER_STATUS	NUMBER
//	private String userBan;				//	USER_BAN	VARCHAR2(1 BYTE)
//	private String userGrade;			//	USER_GRADE	VARCHAR2(20 BYTE)
//	private Date userLogin;	
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
