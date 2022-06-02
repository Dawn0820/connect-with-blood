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
import member.model.vo.BloodInfo;
import member.model.vo.Member;

/**
 * Servlet implementation class Join
 */
@WebServlet("/insertB.mem")
public class insertBloodInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertBloodInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */ 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("UTF-8");
	
	String bloodNo = request.getParameter("bloodNo");
	
	String bloodWh = request.getParameter("bloodWh");

	//+= //mapper에서 처리해보기 매퍼에서 서브밋 할때마다 +1이 되게끔!
	int bloodCnt = Integer.parseInt(request.getParameter("bloodWh"));
	
	String bloodOwner = request.getParameter("bloodOwner");
	
	System.out.println(bloodNo);
	System.out.println(bloodWh);
	System.out.println(bloodCnt);
	System.out.println(bloodOwner);
	System.out.println("메옹");
	
	

	BloodInfo b = new BloodInfo(bloodNo,bloodCnt,bloodWh,bloodOwner);
	int result = new MemberService().insertBloodInfo(b);

	
	
	
	if(result>0) {
		
		HttpSession session = request.getSession();
		session.setAttribute("alertMsg", "헌혈증 등록에 성공했습니다."); 
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/member/mypage.jsp");
		view.forward(request,response);
		 
		
	}else {
		
		request.setAttribute("errorMsg", "헌혈증 등록에 실패하였습니다.");
		
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
