package member.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;

import javax.servlet.RequestDispatcher;

import common.JDBCTemplate;
import member.model.dao.MemberDao;
import member.model.vo.Member;

public class MemberService {

	//로그인
	public Member loginMember(String userId, String userPw) {
		
		
		Connection conn =  getConnection();
		
		Member m = new MemberDao().loginMember(conn,userId,userPw);
		
		close(conn);
		
		return m;
	
	}
		
		
		

	
	//회원가입
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





	//아이디 찾기
	public String findId(String userName,String userEmail) {

		Connection conn = JDBCTemplate.getConnection();
		
		String userId = new MemberDao().findId(conn,userName,userEmail);
		
		close(conn);
		
		return userId;
		
	}





	//비밀번호 찾기
	public String findPw(String userId, String userName, String userEmail) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		String userPw = new MemberDao().findPw(conn,userId,userName,userEmail);
		
		close(conn);
		
		return userPw;
	}





	//ajax 아이디 중복체크
	public int idCheck(String idCheck) {

		Connection conn = JDBCTemplate.getConnection();
		
		int count = new MemberDao().idCheck(conn,idCheck);
		
		JDBCTemplate.close(conn);
		
		return count;
	}



	
	//마이페이지





	
	
}
