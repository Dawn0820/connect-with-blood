package member.model.dao;
import static common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;

public class MemberDao {

private Properties prop = new Properties();
	
	//기본설정
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/db/member/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName)); 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

	//로그인
	public Member loginMember(Connection conn, String userId, String userPw) {
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember"); 
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			
			rset = pstmt.executeQuery(); 
			
			if(rset.next()) { 
				m = new Member(rset.getInt("USER_NO")
							  ,rset.getString("USER_ID")
							  ,rset.getString("USER_PW")
							  ,rset.getString("USER_NAME")
							  ,rset.getString("USER_BIRTH")
							  ,rset.getString("USER_EMAIL")
							  ,rset.getString("USER_PHONE")
							  ,rset.getString("USER_ADDRESS")
							  ,rset.getDate("USER_ENROLLDATE")
							  ,rset.getString("USER_GRADE")
							  ,rset.getString("USER_BLOODTYPE")
							  ,rset.getDate("USER_LOGINDATE")
							  ,rset.getDate("USER_WITHDATE")
							  ,rset.getDate("USER_SUSDATE")
							  ,rset.getString("USER_STATUS")
							  );
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return m;
		
	}


	
	//회원가입
	public int enrollMember(Connection conn, Member m) {
		
		int result=0;
		PreparedStatement pstmt=null;
		String sql = prop.getProperty("enrollMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPw());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getUserBirth());
			pstmt.setString(5, m.getUserEmail());
			pstmt.setString(6, m.getUserPhone());
			pstmt.setString(7, m.getUserAddress());
			pstmt.setString(8, m.getUserBloodtype());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	
	
	//아이디 찾기
	public String findId(Connection conn, String userName, String userEmail) {
		
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String userId = null;
		String sql = prop.getProperty("findId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, userEmail);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				userId=rset.getString("USER_ID");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return userId;
	}

	
	
	//비밀번호 찾기
	public String findPw(Connection conn, String userId, String userName, String userEmail) {
		
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String userPw = null;
		String sql = prop.getProperty("findPw");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userName);
			pstmt.setString(3, userEmail);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				userPw=rset.getString("USER_PW");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return userPw;
		
		
	}



	//ajax 아이디 중복체크
	public int idCheck(Connection conn, String idCheck) {

				int count = 0;
				
				PreparedStatement pstmt = null;
				
				ResultSet rset = null;
				
				String sql = prop.getProperty("idCheck");
				
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, idCheck);
					
					rset = pstmt.executeQuery();
					
					
					if(rset.next()) {
						count = rset.getInt("COUNT");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					close(rset);
					close(pstmt);
				}
				return count;
	}



	//회원탈퇴
	public int deleteMember(Connection conn, String userId, String userPwd) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteMember");
		

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);
				pstmt.setString(2, userPwd);
				
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
			return result;
	}












}
	
	
	
	

