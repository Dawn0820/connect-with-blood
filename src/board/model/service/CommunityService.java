package board.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import board.model.dao.CommunityDao;
import board.model.vo.Community;

public class CommunityService {

	
	
	public Community selectCommunityList() {

		Connection conn = getConnection();
		
		Community comm = new CommunityDao().selectCommunityList(conn);
		
		close(conn);
		
		return comm;
	}

}
