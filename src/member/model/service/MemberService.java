package member.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;

public class MemberService {

	public Member loginMember(String userId, String userPw) {
		
		
		Connection conn =  getConnection();
		
		Member m = new MemberDao().loginMember(conn,userId,userPw);
		
		close(conn);
		
		
		return m;
	}

}
