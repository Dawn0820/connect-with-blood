package event.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import common.PageInfo;
import event.model.dao.EventDao;
import event.model.vo.Event;

public class EventService {

	public int selectListCount() {

		Connection conn = getConnection();
		
		int listCount = new EventDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<Event> selectEventList(PageInfo pi) {

		
		Connection conn = getConnection();
		
		ArrayList<Event> list = new EventDao().selectEventList(conn,pi);
		
		close(conn);
		
		return list;
	}

	public int increaseCount(int eventNo) {

		Connection conn = getConnection();
		
		int result = new EventDao().increaseCount(conn,eventNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public Event selectEvent(int eventNo) {

		Connection conn = getConnection();
		
		Event event = new EventDao().selectEvent(conn, eventNo);
		
		close(conn);
		
		return event;
	}


}
