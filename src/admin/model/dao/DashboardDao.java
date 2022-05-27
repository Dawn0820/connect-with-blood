package admin.model.dao;
import static common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Properties;

import admin.model.vo.Dashboard;
import notice.model.vo.Notice;

public class DashboardDao {
	
	private Properties prop = new Properties();
	
	public DashboardDao() {
		
		String fileName = DashboardDao.class.getResource("/db/admin/admin-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ArrayList<Dashboard> selectDashboardList(Connection conn) {
		
		ArrayList<Dashboard> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectDashboardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Dashboard(rset.getDate("BLOOD_DATE")
									  ,rset.getInt("BLOOD_COUNT")));
									
			}
			
			list.removeAll(Collections.singleton(null));
			
			
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
