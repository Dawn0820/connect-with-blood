package member.model.service;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import member.model.dao.MemberDao;
import member.model.vo.Member;
//규민파트 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


//회원정보
	public class MemberService { 

	public ArrayList<Member> selectMemberList() {
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectList(conn);
		
		close(conn);
		
		return list;
	}
	
	// 금일 신규 현황
	public int selectTodayNewMemberCnt() {
		Connection conn = getConnection();
		
		//db에 접근하기 위한 dao 호출(쿼리가 작성되어있는 xml 로 접근하는 소스가 있기때문에)
		int todayNewMemberCnt = new MemberDao().selectTodayNewMemberCnt(conn); 
		
		close(conn);
		
		return todayNewMemberCnt;
	}
	
	// 이번달 신규 현황
	public int selectMonthNewMemberCnt() {
		Connection conn = getConnection();
		
		//db에 접근하기 위한 dao 호출(쿼리가 작성되어있는 xml 로 접근하는 소스가 있기때문에)
		int monthNewMemberCnt = new MemberDao().selectMonthNewMemberCnt(conn); 
		
		close(conn);
		
		return monthNewMemberCnt;
	}
	
	//금일 탈퇴현황
	public int selectTodayDelMemberCnt() {
		Connection conn = getConnection();
		
		int todayDelMemberCnt = new MemberDao().selectTodayDelMemberCnt(conn);
		
		close(conn);
		
		return todayDelMemberCnt;
	}
	//이번달 탈퇴현황
	public int selectMonthDelMemberCnt() {
		Connection conn = getConnection();
		
		//db에 접근하기 위한 dao 호출(쿼리가 작성되어있는 xml 로 접근하는 소스가 있기때문에)
		int monthDelMemberCnt = new MemberDao().selectMonthDelMemberCnt(conn); 
		
		close(conn);
		
		return monthDelMemberCnt;
	}
	
	//금일 회원 정지현황
	public int selectTodayStopMemberCnt() {
		Connection conn = getConnection();
		
		int todayStopMemberCnt = new MemberDao().selectTodayStopMemberCnt(conn);
		
		close(conn);
		
		return todayStopMemberCnt;
	}

	public int selectMonthStopMemberCnt() {
		Connection conn = getConnection();
		
		int monthStopMemberCnt = new MemberDao().selectMonthStopMemberCnt(conn);
		
		close(conn);
		
		return monthStopMemberCnt;
	}


	
}
