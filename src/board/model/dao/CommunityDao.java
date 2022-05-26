package board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Attachment;
import board.model.vo.Category;
import board.model.vo.Community;
import common.PageInfo;

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

	public int selectListCount(Connection conn) {
		
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;

		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
		
	}

	public ArrayList<Community> selectList(Connection conn, PageInfo pi) {
		
		ArrayList<Community> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCommunityList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() +1;
			int endRow = pi.getCurrentPage() * pi.getBoardLimit();
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Community(rset.getInt("COMM_NO")
										,rset.getString("COMM_TITLE")
										,rset.getInt("COMM_COUNT")
										,rset.getDate("COMM_DATE")
										,rset.getString("USER_NAME")
										,rset.getString("CATEGORY_NAME")));
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

	public int increaseCount(Connection conn, int commNo) {

		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, commNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
	
		return result;
		
	}

	public Community selectComm(Connection conn, int commNo) {

		Community comm = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectComm");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, commNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				comm = new Community(rset.getInt("COMM_NO")
									,rset.getString("COMM_TITLE")
									,rset.getString("COMM_CONTENT")
									,rset.getDate("COMM_DATE")		
									,rset.getString("USER_NAME")
									,rset.getString("CATEGORY_NAME"));
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

	public ArrayList<Category> selectCategoryList(Connection conn) {

		ArrayList<Category> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCategoryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Category(rset.getInt("CATEGORY_NO")
										,rset.getString("CATEGORY_NAME")));
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

	public int insertComm(Connection conn, Community comm) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertComm");
		
		try {
			pstmt =  conn.prepareStatement(sql);

			pstmt.setString(1, comm.getCommTitle());
			pstmt.setInt(2, Integer.parseInt(comm.getCategoryNo()));
			pstmt.setString(3, comm.getCommContent());
//			pstmt.setString(4, comm.getCommWriter());
		
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;

	}

	public int insertAttachment(Connection conn, Attachment at) {

		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, at.getOriginName());
			pstmt.setString(2, at.getChangeName());
			pstmt.setString(3, at.getFilePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}

	public Attachment selectAttachment(Connection conn, int commNo) {

		Attachment at = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, commNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				at = new Attachment(rset.getInt("FILE_NO")
									,rset.getString("ORIGIN_NAME")
									,rset.getString("CHANGE_NAME")
									,rset.getString("FILE_PATH"));		
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
	
		return at;
	}

	public int updateCommunity(Connection conn, Community comm, Attachment newAttachment) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateCommunity");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(comm.getCategoryNo()));
			pstmt.setString(2, comm.getCommTitle());
			pstmt.setString(3, comm.getCommTitle());
			pstmt.setInt(4, comm.getCommNo());
			
			result = pstmt.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
				
		return result;
	}

	public int updateAttachment(Connection conn, Attachment newAttachment) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, newAttachment.getOriginName());
			pstmt.setString(2, newAttachment.getChangeName());
			pstmt.setString(3, newAttachment.getFilePath());
			pstmt.setInt(4, newAttachment.getFileNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}

	public int insertNewAttachment(Connection conn, Attachment newAttachment) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertNewAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, newAttachment.getRefCno());
			pstmt.setString(2, newAttachment.getOriginName());
			pstmt.setString(3, newAttachment.getChangeName());
			pstmt.setString(4, newAttachment.getFilePath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}

	public int deleteCommunity(Connection conn, int commNo) {

		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteCommunity");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, commNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
		
		

	
	
	
}
