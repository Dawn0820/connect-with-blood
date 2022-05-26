package member.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;

import javax.servlet.RequestDispatcher;

import common.JDBCTemplate;
import member.model.dao.MemberDao;
import member.model.vo.Member;

public class MemberService {

	//�α���
	public Member loginMember(String userId, String userPw) {
		
		
		Connection conn =  getConnection();
		
		Member m = new MemberDao().loginMember(conn,userId,userPw);
		
		close(conn);
		
		return m;
	
	}
		
		
		

	
	//ȸ������
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





	//���̵� ã��
	public String findId(String userName,String userEmail) {

		Connection conn = JDBCTemplate.getConnection();
		
		String userId = new MemberDao().findId(conn,userName,userEmail);
		
		close(conn);
		
		return userId;
		
	}





	//��й�ȣ ã��
	public String findPw(String userId, String userName, String userEmail) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		String userPw = new MemberDao().findPw(conn,userId,userName,userEmail);
		
		close(conn);
		
		return userPw;
	}





	//ajax ���̵� �ߺ�üũ
	public int idCheck(String idCheck) {

		Connection conn = JDBCTemplate.getConnection();
		
		int count = new MemberDao().idCheck(conn,idCheck);
		
		JDBCTemplate.close(conn);
		
		return count;
	}





	//ȸ�� Ż��
	public int deleteMember(String userId, String userPwd) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().deleteMember(conn, userId, userPwd);
		//Ż���� ȸ�� ó���̱⋚���� �α׾ƿ����� ���� (ȸ������ ���� �ʿ����)
		
		if(result>0) {
			JDBCTemplate.commit(conn);
			
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}



	





	
	
}
