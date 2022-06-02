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

import reservation.model.vo.Reservation;

public class ReservationDao {

	private Properties prop = new Properties();
	
	public ReservationDao() {
		String fileName = ReservationDao.class.getResource("/db/reservation/reservation-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int enrollReservation(Connection conn, Reservation reserv) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("enrollReservation");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reserv.getReservationWriter());
			pstmt.setString(2, reserv.getReservationAddress());
			pstmt.setString(3, reserv.getReservationAddress2());
			pstmt.setString(4, reserv.getReservationDate());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
		
		
	}

	public void selectReservationList(Connection conn) {
		
		ArrayList<Reservation> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReservationList");
		
	}
}
