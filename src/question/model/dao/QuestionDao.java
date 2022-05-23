package question.model.dao;
import static common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import question.model.vo.Question;

public class QuestionDao {

	private Properties prop = new Properties();
	
	public QuestionDao() {
		
		String fileName = QuestionDao.class.getResource("/db/question/question-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<Question> selectQuestionList(Connection conn) {
		
		ArrayList<Question> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectQnaList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Question(rset.getInt("QUESTION_NO")
						             ,rset.getString("QUESTION_TAG")
						             ,rset.getString("QUESTION_TITLE")
						             ,rset.getString("QUESTION_CONTENT")
						             ,rset.getDate("QUESTION_DATE")
						             ,rset.getString("USER_NAME")));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
		
	}

}
