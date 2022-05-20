package member.model.dao;
import static common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;

public class MemberDao {

private Properties prop = new Properties();
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/db/member/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName)); 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

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
							  ,rset.getInt("USER_STATUS")
							  ,rset.getString("USER_BAN")
							  ,rset.getString("USER_GRADE")
							  ,rset.getDate("USER_LOGIN")
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
	}
	
	
	
	

