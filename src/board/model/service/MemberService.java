<<<<<<< HEAD
package board.model.service;
=======
package board.model.Service;
>>>>>>> branch 'master' of https://github.com/Dawn0820/connect-with-blood.git
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.dao.BoardDao;
import board.model.vo.Member;

public class MemberService {
	Connection conn = getConnection();
	
	public ArrayList<Member> MemberList() {
		
		ArrayList<Member> list = new BoardDao().MemberList(conn,ms);
		
		
		return list;
		
	}
}
