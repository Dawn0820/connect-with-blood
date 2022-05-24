package member.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;

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

}
