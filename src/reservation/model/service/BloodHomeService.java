package reservation.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import reservation.model.dao.BloodHomeDao;
import reservation.model.vo.BloodHome;

public class BloodHomeService {

	public ArrayList<BloodHome> selectBloodHomeList() {
		
		Connection conn = getConnection();
		
		ArrayList<BloodHome> list = new BloodHomeDao().selectBloodHomeList(conn);
		
		return list;
		
	}

}
