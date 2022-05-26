package notice.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import common.PageInfo;
import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;

public class NoticeService {

	public int selectListCount() {

		Connection conn = getConnection();
		
		int listCount = new NoticeDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	
	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn,pi);
		
		close(conn);
		
		return list;
	}


	public int increaseCount(int noticeNo) {

		Connection conn = getConnection();

		int result = new NoticeDao().increaseCount(conn,noticeNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;

	}


	public Notice selectNotice(int noticeNo) {

		Connection conn = getConnection();

		Notice n = new NoticeDao().selectNotice(conn,noticeNo);
		
		close(conn);
		
		return n;
	}

	
	
	
//	public ArrayList<Notice> selectList(PageInfo pi) {
//
//		Connection conn = getConnection();
//		
//		ArrayList<Notice> list = new NoticeDao().selectList(conn,pi);
//		
//		close(conn);
//		
//		return list;
//	}

}
