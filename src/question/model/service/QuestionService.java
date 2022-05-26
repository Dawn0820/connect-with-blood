package question.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import question.model.dao.QuestionDao;
import question.model.vo.Question;

public class QuestionService {

	public ArrayList<Question> selectQuestionList() {
		
		Connection conn = getConnection();
		
		ArrayList<Question> list = new QuestionDao().selectQuestionList(conn);
		
		close(conn);
		
		return list;
	}

}
