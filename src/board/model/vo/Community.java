package board.model.vo;

import java.sql.Date;

public class Community {
	
	
	private int commNo;						//	COMM_NO	NUMBER
	private int commCategory;						//	COMM_CATEGORY	NUMBER
	private String commTitle;						//	COMM_TITLE	VARCHAR2(100 BYTE)
	private String commContent;						//	COMM_CONTENT	VARCHAR2(4000 BYTE)
	private Date commDate;						//	COMM_DATE	DATE
	private int commCount;						//	COMM_COUNT	NUMBER
	private int userNo;						//	USER_NO	NUMBER
	
	
	public Community() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Community(int commNo, int commCategory, String commTitle, String commContent, Date commDate, int commCount,
			int userNo) {
		super();
		this.commNo = commNo;
		this.commCategory = commCategory;
		this.commTitle = commTitle;
		this.commContent = commContent;
		this.commDate = commDate;
		this.commCount = commCount;
		this.userNo = userNo;
	}

	
	

	public int getCommNo() {
		return commNo;
	}


	public void setCommNo(int commNo) {
		this.commNo = commNo;
	}


	public int getCommCategory() {
		return commCategory;
	}


	public void setCommCategory(int commCategory) {
		this.commCategory = commCategory;
	}


	public String getCommTitle() {
		return commTitle;
	}


	public void setCommTitle(String commTitle) {
		this.commTitle = commTitle;
	}


	public String getCommContent() {
		return commContent;
	}


	public void setCommContent(String commContent) {
		this.commContent = commContent;
	}


	public Date getCommDate() {
		return commDate;
	}


	public void setCommDate(Date commDate) {
		this.commDate = commDate;
	}


	public int getCommCount() {
		return commCount;
	}


	public void setCommCount(int commCount) {
		this.commCount = commCount;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	@Override
	public String toString() {
		return "Community [commNo=" + commNo + ", commCategory=" + commCategory + ", commTitle=" + commTitle
				+ ", commContent=" + commContent + ", commDate=" + commDate + ", commCount=" + commCount + ", userNo="
				+ userNo + "]";
	}
	
	
	
	
	
	
}
