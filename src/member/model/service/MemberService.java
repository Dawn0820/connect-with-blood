package member.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;

import common.JDBCTemplate;
import member.model.dao.MemberDao;
import member.model.vo.Member;

	public class MemberService { 
	
		
		public Member loginMember(String userId, String userPw) {

    		Connection conn =  getConnection();
		
		Member m = new MemberDao().loginMember(conn,userId,userPw);
		
		close(conn);
		
		return m;
	
	}

	public ArrayList<Member> selectMemberList() {
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectList(conn);

		
		close(conn);
		
		return list;
	}
	
	public int selectTodayNewMemberCnt() {
		Connection conn = getConnection();
		
		int todayNewMemberCnt = new MemberDao().selectTodayNewMemberCnt(conn); 
		
		close(conn);
		
		return todayNewMemberCnt;
	}
	
	public int selectMonthNewMemberCnt() {
		Connection conn = getConnection();
		
		int monthNewMemberCnt = new MemberDao().selectMonthNewMemberCnt(conn); 
		
		close(conn);
		
		return monthNewMemberCnt;
	}
	
	public int selectTodayDelMemberCnt() {
		Connection conn = getConnection();
		
		int todayDelMemberCnt = new MemberDao().selectTodayDelMemberCnt(conn);
		
		close(conn);
		
		return todayDelMemberCnt;
	}
	
	public int selectMonthDelMemberCnt() {
		Connection conn = getConnection();
		
		int monthDelMemberCnt = new MemberDao().selectMonthDelMemberCnt(conn); 
		
		close(conn);
		
		return monthDelMemberCnt;
	}
	
	
	public int selectTodayStopMemberCnt() {
		Connection conn = getConnection();
		
		int todayStopMemberCnt = new MemberDao().selectTodayStopMemberCnt(conn);
		
		close(conn);
		
		return todayStopMemberCnt;

	
	}
	
	
	public int selectMonthStopMemberCnt() {
		Connection conn = getConnection();
		
		int monthStopMemberCnt = new MemberDao().selectMonthStopMemberCnt(conn);
		
		close(conn);
		
		return monthStopMemberCnt;
	}
		
		

	

	public int enrollMember(Member m) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().enrollMember(conn,m);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;

	}




	public String findId(String userName,String userEmail) {

		Connection conn = JDBCTemplate.getConnection();
		
		String userId = new MemberDao().findId(conn,userName,userEmail);
		
		close(conn);
		
		return userId;
		
	}






	public String findPw(String userId, String userName, String userEmail) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		String userPw = new MemberDao().findPw(conn,userId,userName,userEmail);
		
		close(conn);
		
		return userPw;
	}






	public int idCheck(String idCheck) {

		Connection conn = JDBCTemplate.getConnection();
		
		int count = new MemberDao().idCheck(conn,idCheck);
		
		JDBCTemplate.close(conn);
		
		return count;
	}






	public int deleteMember(String userId, String userPwd) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().deleteMember(conn, userId, userPwd);

		
		if(result>0) {
			JDBCTemplate.commit(conn);
			
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}



	





	

	
}
