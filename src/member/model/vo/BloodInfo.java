package member.model.vo;

import java.sql.Date;

public class BloodInfo {

	private String bloodNo;		//    BLOOD_NO VARCHAR2(100) PRIMARY KEY,  -- jsp에서 자리수 제한, 검증 필요
	private int bloodCnt;		//    BLOOD_COUNT NUMBER DEFAULT 0,
	private String bloodWh;		//    BLOOD_WH VARCHAR2(100),
	private String bloodIn;		//    BLOOD_IN VARCHAR2(100),
	private Date bloodDate;		//    BLOOD_DATE DATE DEFAULT SYSDATE,
	private int bloodOwner;		//    BLOOD_OWNER NUMBER NOT NULL,
			//    FOREIGN KEY(BLOOD_OWNER) REFERENCES MEMBER(USER_NO)
    
	public BloodInfo() {
		// TODO Auto-generated constructor stub
	}

	
	
	
	//헐혈증 등록 생성자
	public BloodInfo(String bloodNo2, int bloodCnt2, String bloodWh2, String bloodIn2) {
		// TODO Auto-generated constructor stub
	}

	
	
	
	


	public BloodInfo(String bloodNo2, int bloodCnt2, String bloodWh2, int bloodOwner2) {
		// TODO Auto-generated constructor stub
	}



/////////////////////////////////
	public BloodInfo(String userId, String bloodNo2, int bloodCnt2, String bloodWh2, int bloodOwner2) {
		// TODO Auto-generated constructor stub
	}




	public String getBloodNo() {
		return bloodNo;
	}

	public void setBloodNo(String bloodNo) {
		this.bloodNo = bloodNo;
	}

	public int getBloodCnt() {
		return bloodCnt;
	}

	public void setBloodCnt(int bloodCnt) {
		this.bloodCnt = bloodCnt;
	}

	public String getBloodWh() {
		return bloodWh;
	}

	public void setBloodWh(String bloodWh) {
		this.bloodWh = bloodWh;
	}

	public String getBloodIn() {
		return bloodIn;
	}

	public void setBloodIn(String bloodIn) {
		this.bloodIn = bloodIn;
	}

	public Date getBloodDate() {
		return bloodDate;
	}

	public void setBloodDate(Date bloodDate) {
		this.bloodDate = bloodDate;
	}

	public int getBloodOwner() {
		return bloodOwner;
	}

	public void setBloodOwner(int bloodOwner) {
		this.bloodOwner = bloodOwner;
	}

	@Override
	public String toString() {
		return "BloodInfo [bloodNo=" + bloodNo + ", bloodCnt=" + bloodCnt + ", bloodWh=" + bloodWh + ", bloodIn="
				+ bloodIn + ", bloodDate=" + bloodDate + ", bloodOwner=" + bloodOwner + "]";
	}
	
	
}
