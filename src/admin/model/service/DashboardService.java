package admin.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import admin.model.dao.DashboardDao;
import admin.model.vo.Dashboard;
import notice.model.vo.Notice;

public class DashboardService {

	public ArrayList<Dashboard> selectDashboardList() {
		
		Connection conn = getConnection();
		
		ArrayList<Dashboard> list = new DashboardDao().selectDashboardList(conn);
		
		close(conn);
		
		return list;
		
		
		
		
		
		
		
		
		
	}

}
