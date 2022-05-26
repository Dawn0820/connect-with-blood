package notice.model.dao;
import static common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import notice.model.vo.Notice;

public class NoticeDao {
	
	private Properties prop = new Properties();
	
	public NoticeDao() {
		
		String fileName = NoticeDao.class.getResource("/db/notice/notice-mapper.xml").getPath();
		
		try {
            prop.loadFromXML(new FileInputStream(fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }	
	}

	public ArrayList<Notice> selectNoticeList(Connection conn) {
		
		ArrayList<Notice> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNoticeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Notice(rset.getInt("NOTICE_NO")
								   ,rset.getString("NOTICE_TITLE")
								   ,rset.getString("NOTICE_CONTENT")
								   ,rset.getDate("NOTICE_DATE")
								   ,rset.getInt("NOTICE_COUNT")
								   ,rset.getString("USER_NAME")));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	
	


}
