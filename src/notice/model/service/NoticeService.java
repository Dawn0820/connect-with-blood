package notice.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;

public class NoticeService {

	public ArrayList<Notice> selectNoticeList() {
		
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn);
		
		close(conn);
		
		return list;
	}

}
