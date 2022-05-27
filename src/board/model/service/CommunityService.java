package board.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.CommunityDao;
import board.model.vo.Attachment;
import board.model.vo.Category;
import board.model.vo.Community;
import common.PageInfo;

public class CommunityService {

	public int selectListCount() {

		Connection conn = getConnection();
		
		int listCount = new CommunityDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;   
		
	}

	public ArrayList<Community> selectList(PageInfo pi) {

		Connection conn = getConnection();
		
		ArrayList<Community> list = new CommunityDao().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}

	public int increaseCount(int commNo) {

		Connection conn = getConnection();
		
		int result = new CommunityDao().increaseCount(conn,commNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public Community selectComm(int commNo) {
		
		Connection conn = getConnection();
		
		Community comm = new CommunityDao().selectComm(conn,commNo);
		
		close(conn);
		
		return comm;
	}

	public ArrayList<Category> selectCategoryList() {

		Connection conn = getConnection();
		
		ArrayList<Category> list = new CommunityDao().selectCategoryList(conn);
		
		close(conn);
		
		return list;
	}

	public int insertComm(Community comm, Attachment at) {

		Connection conn = getConnection();
		
		int result1 = new CommunityDao().insertComm(conn,comm);
		
		int result2 = 1;
		
		if(at != null) {
			result2 = new CommunityDao().insertAttachment(conn,at);
		}
		
		if(result1>0 && result2>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1*result2;
	}

	public Attachment selectAttachment(int commNo) {

		Connection conn = getConnection();
		
		Attachment at = new CommunityDao().selectAttachment(conn,commNo);
				
		close(conn);
		
		return at;
	}

	public int updateCommunity(Community comm, Attachment newAttachment) {

		Connection conn = getConnection();

		int result1 = new CommunityDao().updateCommunity(conn,comm,newAttachment);

		int result2 = 0;
		
		if(newAttachment != null) {
			
			if(newAttachment.getFileNo()!=0) {
				result2 = new CommunityDao().updateAttachment(conn, newAttachment);
			}else {
				result2 = new CommunityDao().insertNewAttachment(conn, newAttachment);

			}
		}
		
		return result1*result2;
	}

	public int deleteCommunity(int commNo) {

		Connection conn = getConnection();
		
		int result = new CommunityDao().deleteCommunity(conn, commNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	
	
	

}
