package member.model.dao;
import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import org.apache.jasper.compiler.Node.GetProperty;

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
	
	//회원정보
	public ArrayList<Member> selectList(Connection conn) {
		
		ArrayList<Member> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMemberList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			

			while(rset.next()) {
				list.add(new Member(rset.getInt("USER_NO")
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
						  ,rset.getString("USER_STATUS")));

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

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
<<<<<<< HEAD
=======


	
	//ȸ������
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
	
	

	
	//금일 신규회원 COUNT
	public int selectTodayNewMemberCnt(Connection conn) {
		
		int Count = 0; // 
		
		PreparedStatement pstmt = null; // SQL구문을 실행시키는 기능을 갖는 객체
		
		ResultSet rset = null; // query 실행 후 그 값을 rset에 저장
		
		String sql = prop.getProperty("selectTodayNewMemberCnt"); 
		
		try {
			pstmt = conn.prepareStatement(sql); 
			rset = pstmt.executeQuery();		// executeQuery select DB 동작 바뀌지 않고 보여주는 용도
			
			//쿼리에서 AS로 이름변경해서 밑에도 동일하게 변경해준거에용
			if(rset.next()) { // 결과값의 다음 행의 정보가있으면?
				//이건 int로 잘받아왔군 잘해쏘
				Count = rset.getInt("TODAY_MEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db에서 검색된 count를 리턴해준다!
		return Count;
	}

	//이번달 신규회원현황 COUNT
	public int selectMonthNewMemberCnt(Connection conn) {
			
			int Count = 0;
			
			PreparedStatement pstmt = null;
			
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectMonthNewMemberCnt");
			
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				
				//쿼리에서 AS로 이름변경해서 밑에도 동일하게 변경해준거에용
				if(rset.next()) {
					//이건 int로 잘받아왔군 잘해쏘
					Count = rset.getInt("MONTH_NEWMEMBER_COUNT");
				}
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//db에서 검색된 count를 리턴해준다!
			return Count;
		}
	
	//금일 회원탈퇴현황 COUNT
	public int selectTodayDelMemberCnt(Connection conn) {
		
		int Count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTodayDelMemberCnt");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			//쿼리에서 AS로 이름변경해서 밑에도 동일하게 변경해준거에용
			if(rset.next()) {
				//이건 int로 잘받아왔군 잘해쏘
				Count = rset.getInt("TODAY_DELMEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db에서 검색된 count를 리턴해준다!
		return Count;
	}
	
	//이번달 회원탈퇴현황 COUNT
	public int selectMonthDelMemberCnt(Connection conn) {
		int Count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMonthDelMemberCnt");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			//쿼리에서 AS로 이름변경해서 밑에도 동일하게 변경해준거에용
			if(rset.next()) {
				//이건 int로 잘받아왔군 잘해쏘
				Count = rset.getInt("MONTH_DELMEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db에서 검색된 count를 리턴해준다!
		return Count;
	}

	//금일 정지회원현황 COUNT
	public int selectTodayStopMemberCnt(Connection conn) {

		int Count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTodayStopMemberCnt");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			//쿼리에서 AS로 이름변경해서 밑에도 동일하게 변경해준거에용
			if(rset.next()) {
				//이건 int로 잘받아왔군 잘해쏘
				Count = rset.getInt("TODAY_STOPMEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db에서 검색된 count를 리턴해준다!
		return Count;
	}
	
	
	//이번달 정지현황 
	public int selectMonthStopMemberCnt(Connection conn) {
		int Count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMonthStopMemberCnt");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			//쿼리에서 AS로 이름변경해서 밑에도 동일하게 변경해준거에용
			if(rset.next()) {
				//이건 int로 잘받아왔군 잘해쏘
				Count = rset.getInt("MONTH_STOPMEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db에서 검색된 count를 리턴해준다!
		return Count;
	}


	
	
	
	
	
}
