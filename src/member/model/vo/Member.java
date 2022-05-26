package member.model.vo;

import java.sql.Date;

public class Member {


		private int userNo;//	USER_NO	NUMBER
		private String userId;//	USER_ID	VARCHAR2(20 BYTE)
		private String userPw;//	USER_PW	VARCHAR2(50 BYTE)
		private String userName;//	USER_NAME	VARCHAR2(20 BYTE)
		private String userBirth;//	USER_BIRTH	VARCHAR2(20 BYTE)
		private String userEmail;//	USER_EMAIL	VARCHAR2(50 BYTE)
		private String userPhone;//	USER_PHONE	VARCHAR2(20 BYTE)
		private String userAddress;//	USER_ADDRESS	VARCHAR2(500 BYTE)
		private Date userEnrolldate;//	USER_ENROLLDATE	DATE
		private String userGrade;//	USER_GRADE	VARCHAR2(20 BYTE)
		private String userBloodtype;//	USER_BLOODTYPE	VARCHAR2(10 BYTE)
		private Date userLogindate;//	USER_LOGINDATE	DATE
		private Date userWithdate;//	USER_WITHDATE	DATE
		private Date userSusdate;//	USER_SUSDATE	DATE
		private String userStatus;//	USER_STATUS	VARCHAR2(20 BYTE)
		//Logindate - 회원 로그인날짜
		//Withdate - 회원 탈퇴날짜
		//Susdate - 회원 정지/블랙리스트 날짜
		//Status - 회원상태(NORMAL/WITHDRAWAL/SUSPENSION/BLACKLIST)

		
		
	
//		//회원현황 (membershipStatus)
//		public Member(Date userEnrolldate, Date userWithdate, Date userSusdate) {
//			super();
//			this.userEnrolldate = userEnrolldate;
//			this.userWithdate = userWithdate;
//			this.userSusdate = userSusdate;
//		}

		//회원현황은 필드를 안만들어도 조회가 되는데 이거 뭐지
		//알아야겠는데..



		public Member(int userNo, String userId, String userPw, String userName, String userBirth, String userEmail,
				String userPhone, String userAddress, Date userEnrolldate, String userGrade, String userBloodtype,
				Date userLogindate, Date userWithdate, Date userSusdate, String userStatus) {
			super();
			this.userNo = userNo;
			this.userId = userId;
			this.userPw = userPw;
			this.userName = userName;
			this.userBirth = userBirth;
			this.userEmail = userEmail;
			this.userPhone = userPhone;
			this.userAddress = userAddress;
			this.userEnrolldate = userEnrolldate;
			this.userGrade = userGrade;
			this.userBloodtype = userBloodtype;
			this.userLogindate = userLogindate;
			this.userWithdate = userWithdate;
			this.userSusdate = userSusdate;
			this.userStatus = userStatus;
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
			return "Member [userNo=" + userNo + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
					+ ", userBirth=" + userBirth + ", userEmail=" + userEmail + ", userPhone=" + userPhone
					+ ", userAddress=" + userAddress + ", userEnrolldate=" + userEnrolldate + ", userGrade=" + userGrade
					+ ", userBloodtype=" + userBloodtype + ", userLogindate=" + userLogindate + ", userWithdate="
					+ userWithdate + ", userSusdate=" + userSusdate + ", userStatus=" + userStatus + "]";
		}
=======

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
>>>>>>> branch 'master' of https://github.com/Dawn0820/connect-with-blood.git

		



<<<<<<< HEAD
}
=======
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
