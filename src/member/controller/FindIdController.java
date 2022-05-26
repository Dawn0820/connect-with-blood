package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;

/**
 * Servlet implementation class findId
 */
@WebServlet("/findId.mem")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("UTF-8");
		
//		request.getRequestDispatcher("views/member/findId_after.jsp").forward(request, response);
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		
		
		String userId = new MemberService().findId(userName,userEmail);
		
		
        //출력
        if(userId != null) {//결과가 있으면(정보가 맞다면)
           
        	//순서 중요! getSession과 forward 순서가 바뀌면 session이 늦게 들어옴!
           request.getSession().setAttribute("userId", userId);
           request.getRequestDispatcher("views/member/findId_after.jsp").forward(request, response);
          
        }
        else {//결과가 없으면(정보가 맞지 않으면)
        	request.setAttribute("errorMsg", "아이디 찾기를 실패하였습니다.");
        	RequestDispatcher view =  request.getRequestDispatcher("views/common/errorPage.jsp");
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
