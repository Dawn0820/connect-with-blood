package reservation.model.dao;
import static common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import reservation.model.vo.BloodHome;

public class BloodHomeDao {
	
	private Properties prop = new Properties();
	
	public BloodHomeDao() {
		
		String fileName = BloodHomeDao.class.getResource("/db/reservation/reservation-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ArrayList<BloodHome> selectBloodHomeList(Connection conn) {
		
		ArrayList<BloodHome> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBloodHomeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new BloodHome(rset.getString("BLHOME_ADDRESS")
									  ,rset.getString("BLHOME_ADDRESS2")));
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
