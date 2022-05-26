package question.model.service;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import common.PageInfo;
import question.model.dao.QuestionDao;
import question.model.vo.Category;
import question.model.vo.Question;

public class QuestionService {

	public int selectQuestionCount() {

		Connection conn = getConnection();
		
		int listCount = new QuestionDao().selectQnaCount(conn);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<Question> selectQuestionList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Question> list = new QuestionDao().selectQuestionList(conn,pi);
		
		close(conn);
		
		return list;
	}

//	public int increaseCount(int queNo) {
//
//		Connection conn = getConnection();
//		
//		int result = new QuestionDao().increaseCount(conn,queNo);
//		
//		if(result>0) {
//			commit(conn);
//		}else {
//			rollback(conn);
//		}
//		close(conn);
//		
//		return result;
//	}

	public Question selectQue(int queNo) {

		Connection conn = getConnection();
		
		Question que = new QuestionDao().selectQue(conn, queNo);
		
		close(conn);
		
		return que;
	}
	
	public ArrayList<Category> selectCategoryList(){
		
		Connection conn = getConnection();
		
		ArrayList<Category> list = new QuestionDao().selectCategoryList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	
	


}
