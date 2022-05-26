package board.model.vo;

import java.sql.Date;

public class Member {
	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private String userBirth;
	private String userEmail;
	private String userPhone;
	private String userAddress;
	private Date enrollDate;
	private String userStatus;
	private String userBan;
	private String userGrade;
	private Date userLogin;
	
	public Member() {
		super();
	}

	public Member(int userNo, String userId, String userPw, String userName, String userBirth, String userEmail,
			String userPhone, String userAddress, Date enrollDate, String userStatus, String userBan, String userGrade,
			Date userLogin) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.enrollDate = enrollDate;
		this.userStatus = userStatus;
		this.userBan = userBan;
		this.userGrade = userGrade;
		this.userLogin = userLogin;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public String getUserBan() {
		return userBan;
	}

	public void setUserBan(String userBan) {
		this.userBan = userBan;
	}

	public String getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}

	public Date getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(Date userLogin) {
		this.userLogin = userLogin;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", userEmail=" + userEmail + ", userPhone=" + userPhone
				+ ", userAddress=" + userAddress + ", enrollDate=" + enrollDate + ", userStatus=" + userStatus
				+ ", userBan=" + userBan + ", userGrade=" + userGrade + ", userLogin=" + userLogin + "]";
	}
	

}