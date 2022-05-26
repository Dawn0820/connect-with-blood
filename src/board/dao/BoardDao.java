package board.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Member;
import member.model.service.MemberService;
import static common.JDBCTemplate.close;
public class BoardDao {
	
	
	private Properties prop = new Properties();
	
	public BoardDao() {
		String fileName = BoardDao.class.getResource("/db/board/board-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Member> selectList(Connection conn, MemberService ms) {
		
		//select문의 결과가 여러행이 나올 수 있기 때문에 리스트 만들어둠
		ArrayList<Member> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("memManagement");
		
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
								   ,rset.getString("USER_STATUS")
								   ,rset.getString("USER_BAN")
								   ,rset.getString("USER_GRADE")
								   ,rset.getDate("USER_LOGIN")
								   ));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
		
	}




}
