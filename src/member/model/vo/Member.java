package member.model.vo;

import java.sql.Date;

public class Member {

			private int userNo;					//	USER_NO	NUMBER
			private String userId;				//	USER_ID	VARCHAR2(20 BYTE)
			private String userPw;				//USER_PW	VARCHAR2(20 BYTE)
			private String userName;			//	USER_NAME	VARCHAR2(20 BYTE)
			private String userBirth;			//	USER_BIRTH	VARCHAR2(20 BYTE)
			private String userEmail;			//	USER_EMAIL	VARCHAR2(50 BYTE)
			private String userPhone;			//	USER_PHONE	VARCHAR2(20 BYTE)
			private String userAdderess;		//	USER_ADDRESS	VARCHAR2(500 BYTE)
			private Date userEnrollDate;		//	USER_ENROLLDATE	DATE
			private int userStatus;				//	USER_STATUS	NUMBER
			private String userBan;				//	USER_BAN	VARCHAR2(1 BYTE)
			private String userGrade;			//	USER_GRADE	VARCHAR2(20 BYTE)
			private Date userLogin;				//	USER_LOGIN	DATE
	
	
			
			
			public Member() {
				// TODO Auto-generated constructor stub
			}




			public Member(int userNo, String userId, String userPw, String userName, String userBirth, String userEmail,
					String userPhone, String userAdderess, Date userEnrollDate, int userStatus, String userBan,
					String userGrade, Date userLogin) {
				super();
				this.userNo = userNo;
				this.userId = userId;
				this.userPw = userPw;
				this.userName = userName;
				this.userBirth = userBirth;
				this.userEmail = userEmail;
				this.userPhone = userPhone;
				this.userAdderess = userAdderess;
				this.userEnrollDate = userEnrollDate;
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




			public String getUserAdderess() {
				return userAdderess;
			}




			public void setUserAdderess(String userAdderess) {
				this.userAdderess = userAdderess;
			}




			public Date getUserEnrollDate() {
				return userEnrollDate;
			}




			public void setUserEnrollDate(Date userEnrollDate) {
				this.userEnrollDate = userEnrollDate;
			}




			public int getUserStatus() {
				return userStatus;
			}




			public void setUserStatus(int userStatus) {
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
				return "Member [userNo=" + userNo + ", userId=" + userId + ", userPw=" + userPw + ", userName="
						+ userName + ", userBirth=" + userBirth + ", userEmail=" + userEmail + ", userPhone="
						+ userPhone + ", userAdderess=" + userAdderess + ", userEnrollDate=" + userEnrollDate
						+ ", userStatus=" + userStatus + ", userBan=" + userBan + ", userGrade=" + userGrade
						+ ", userLogin=" + userLogin + "]";
			}




			
}
