package member.model.vo;

import java.sql.Date;

public class Member {


				private int userNo;							//	USER_NO	NUMBER
				private String userId;						//	USER_ID	VARCHAR2(20 BYTE)
				private String userPw;						//	USER_PW	VARCHAR2(50 BYTE)
				private String userName;					//	USER_NAME	VARCHAR2(20 BYTE)
				private String userBirth;					//	USER_BIRTH	VARCHAR2(20 BYTE)
				private String userEmail;					//	USER_EMAIL	VARCHAR2(50 BYTE)
				private String userPhone;					//	USER_PHONE	VARCHAR2(20 BYTE)
				private String userAddress;					//	USER_ADDRESS	VARCHAR2(500 BYTE)
				private Date userEnrolldate;				//	USER_ENROLLDATE	DATE
				private String userGrade;					//	USER_GRADE	VARCHAR2(20 BYTE)
				private String userBloodtype;				//	USER_BLOODTYPE	VARCHAR2(10 BYTE)
				private Date userLogindate;					//	USER_LOGINDATE	DATE
				private Date userWithdate;					//	USER_WITHDATE	DATE
				private Date userSusdate;					//	USER_SUSDATE	DATE
				private String userStatus;					//	USER_STATUS	VARCHAR2(20 BYTE)




			public Member(String userId2, String userPw2, String userName2, String userBirth2, String userEmail2,
					String userPhone2, String userAddress, String userEnrollDate2, int userStatus2, String userBan2,
					String userGrade2, String userLogin2) {
				// TODO Auto-generated constructor stub
			}
			
			
			
			
			public Member(int i, String string, String string2, String string3, String string4, String string5, String string6, String string7, Date date, String string8, String string9, Date date2, Date date3, Date date4, String string10) {
				// TODO Auto-generated constructor stub
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




			public Date getUserEnrolldate() {
				return userEnrolldate;
			}




			public void setUserEnrolldate(Date userEnrolldate) {
				this.userEnrolldate = userEnrolldate;
			}




			public String getUserGrade() {
				return userGrade;
			}




			public void setUserGrade(String userGrade) {
				this.userGrade = userGrade;
			}




			public String getUserBloodtype() {
				return userBloodtype;
			}




			public void setUserBloodtype(String userBloodtype) {
				this.userBloodtype = userBloodtype;
			}




			public Date getUserLogindate() {
				return userLogindate;
			}




			public void setUserLogindate(Date userLogindate) {
				this.userLogindate = userLogindate;
			}




			public Date getUserWithdate() {
				return userWithdate;
			}




			public void setUserWithdate(Date userWithdate) {
				this.userWithdate = userWithdate;
			}




			public Date getUserSusdate() {
				return userSusdate;
			}




			public void setUserSusdate(Date userSusdate) {
				this.userSusdate = userSusdate;
			}




			public String getUserStatus() {
				return userStatus;
			}




			public void setUserStatus(String userStatus) {
				this.userStatus = userStatus;
			}




			@Override
			public String toString() {
				return "Member [userNo=" + userNo + ", userId=" + userId + ", userPw=" + userPw + ", userName="
						+ userName + ", userBirth=" + userBirth + ", userEmail=" + userEmail + ", userPhone="
						+ userPhone + ", userAddress=" + userAddress + ", userEnrolldate=" + userEnrolldate
						+ ", userGrade=" + userGrade + ", userBloodtype=" + userBloodtype + ", userLogindate="
						+ userLogindate + ", userWithdate=" + userWithdate + ", userSusdate=" + userSusdate
						+ ", userStatus=" + userStatus + "]";
			}
			
			







			
}
