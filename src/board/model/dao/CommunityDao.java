package board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Community;

import static common.JDBCTemplate.*;

public class CommunityDao {

	private Properties prop = new Properties();
	
	public CommunityDao() {
		String fileName = CommunityDao.class.getResource("/db/board/community-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public Community selectCommunityList(Connection conn) {

			
		Community comm = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCommunityList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				comm = new Community(rset.getInt("COMM_NO")
						,rset.getInt("COMM_CATEGORY")
						,rset.getString("COMM_TITLE")
						,rset.getString("COMM_CONTENT")
						,rset.getDate("COMM_DATE")
						,rset.getInt("COMM_COUNT")
						,rset.getInt("USER_NO"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return comm;
		
	}

}
