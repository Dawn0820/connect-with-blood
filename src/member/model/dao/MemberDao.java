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













	
	

	
	//湲덉씪 �떊洹쒗쉶�썝 COUNT
	public int selectTodayNewMemberCnt(Connection conn) {
		
		int Count = 0; // 
		
		PreparedStatement pstmt = null; // SQL援щЦ�쓣 �떎�뻾�떆�궎�뒗 湲곕뒫�쓣 媛뽯뒗 媛앹껜
		
		ResultSet rset = null; // query �떎�뻾 �썑 洹� 媛믪쓣 rset�뿉 ���옣
		
		String sql = prop.getProperty("selectTodayNewMemberCnt"); 
		
		try {
			pstmt = conn.prepareStatement(sql); 
			rset = pstmt.executeQuery();		// executeQuery select DB �룞�옉 諛붾�뚯� �븡怨� 蹂댁뿬二쇰뒗 �슜�룄
			
			//荑쇰━�뿉�꽌 AS濡� �씠由꾨�寃쏀빐�꽌 諛묒뿉�룄 �룞�씪�븯寃� 蹂�寃쏀빐以�嫄곗뿉�슜
			if(rset.next()) { // 寃곌낵媛믪쓽 �떎�쓬 �뻾�쓽 �젙蹂닿��엳�쑝硫�?
				//�씠嫄� int濡� �옒諛쏆븘�솕援� �옒�빐�룜
				Count = rset.getInt("TODAY_MEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db�뿉�꽌 寃��깋�맂 count瑜� 由ы꽩�빐以��떎!
		return Count;
	}

	//�씠踰덈떖 �떊洹쒗쉶�썝�쁽�솴 COUNT
	public int selectMonthNewMemberCnt(Connection conn) {
			
			int Count = 0;
			
			PreparedStatement pstmt = null;
			
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectMonthNewMemberCnt");
			
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				
				//荑쇰━�뿉�꽌 AS濡� �씠由꾨�寃쏀빐�꽌 諛묒뿉�룄 �룞�씪�븯寃� 蹂�寃쏀빐以�嫄곗뿉�슜
				if(rset.next()) {
					//�씠嫄� int濡� �옒諛쏆븘�솕援� �옒�빐�룜
					Count = rset.getInt("MONTH_NEWMEMBER_COUNT");
				}
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//db�뿉�꽌 寃��깋�맂 count瑜� 由ы꽩�빐以��떎!
			return Count;
		}

	
	//湲덉씪 �쉶�썝�깉�눜�쁽�솴 COUNT
	public int selectTodayDelMemberCnt(Connection conn) {
		
		int Count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTodayDelMemberCnt");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			//荑쇰━�뿉�꽌 AS濡� �씠由꾨�寃쏀빐�꽌 諛묒뿉�룄 �룞�씪�븯寃� 蹂�寃쏀빐以�嫄곗뿉�슜
			if(rset.next()) {
				//�씠嫄� int濡� �옒諛쏆븘�솕援� �옒�빐�룜
				Count = rset.getInt("TODAY_DELMEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db�뿉�꽌 寃��깋�맂 count瑜� 由ы꽩�빐以��떎!
		return Count;
	}
	
	//�씠踰덈떖 �쉶�썝�깉�눜�쁽�솴 COUNT
	public int selectMonthDelMemberCnt(Connection conn) {
		int Count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMonthDelMemberCnt");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			//荑쇰━�뿉�꽌 AS濡� �씠由꾨�寃쏀빐�꽌 諛묒뿉�룄 �룞�씪�븯寃� 蹂�寃쏀빐以�嫄곗뿉�슜
			if(rset.next()) {
				//�씠嫄� int濡� �옒諛쏆븘�솕援� �옒�빐�룜
				Count = rset.getInt("MONTH_DELMEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db�뿉�꽌 寃��깋�맂 count瑜� 由ы꽩�빐以��떎!
		return Count;
	}

	//湲덉씪 �젙吏��쉶�썝�쁽�솴 COUNT
	public int selectTodayStopMemberCnt(Connection conn) {

		int Count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTodayStopMemberCnt");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			//荑쇰━�뿉�꽌 AS濡� �씠由꾨�寃쏀빐�꽌 諛묒뿉�룄 �룞�씪�븯寃� 蹂�寃쏀빐以�嫄곗뿉�슜
			if(rset.next()) {
				//�씠嫄� int濡� �옒諛쏆븘�솕援� �옒�빐�룜
				Count = rset.getInt("TODAY_STOPMEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db�뿉�꽌 寃��깋�맂 count瑜� 由ы꽩�빐以��떎!
		return Count;
	}
	
	
	//�씠踰덈떖 �젙吏��쁽�솴 
	public int selectMonthStopMemberCnt(Connection conn) {
		int Count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMonthStopMemberCnt");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			//荑쇰━�뿉�꽌 AS濡� �씠由꾨�寃쏀빐�꽌 諛묒뿉�룄 �룞�씪�븯寃� 蹂�寃쏀빐以�嫄곗뿉�슜
			if(rset.next()) {
				//�씠嫄� int濡� �옒諛쏆븘�솕援� �옒�빐�룜
				Count = rset.getInt("MONTH_STOPMEMBER_COUNT");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db�뿉�꽌 寃��깋�맂 count瑜� 由ы꽩�빐以��떎!
		return Count;
	}


	
	
	
	
	
}
