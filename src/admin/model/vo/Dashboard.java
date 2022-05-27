package admin.model.vo;

import java.sql.Date;

public class Dashboard {
	
	//헌혈증 보유랑을 가져옴 (BLOODINFO 테이블)
	
	String bloodNo;				//	BLOOD_NO	VARCHAR2(100 BYTE)
	int bloodCount;				//	BLOOD_COUNT	NUMBER
	int bloodWh;				//	BLOOD_WH	NUMBER
	int bloodIn;				//	BLOOD_IN	NUMBER
	Date bloodDate;				//	BLOOD_DATE	DATE
	String bloodOwner;			//	BLOOD_OWNER	NUMBER
	
	public Dashboard() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Dashboard(String bloodNo, int bloodCount, int bloodWh, int bloodIn, Date bloodDate, String bloodOwner) {
		super();
		this.bloodNo = bloodNo;
		this.bloodCount = bloodCount;
		this.bloodWh = bloodWh;
		this.bloodIn = bloodIn;
		this.bloodDate = bloodDate;
		this.bloodOwner = bloodOwner;
	}
	
	public Dashboard(Date bloodDate, int bloodCount) {
		super();
		this.bloodDate = bloodDate;
		this.bloodCount = bloodCount;
		
	}

	public String getBloodNo() {
		return bloodNo;
	}

	public void setBloodNo(String bloodNo) {
		this.bloodNo = bloodNo;
	}

	public int getBloodCount() {
		return bloodCount;
	}

	public void setBloodCount(int bloodCount) {
		this.bloodCount = bloodCount;
	}

	public int getBloodWh() {
		return bloodWh;
	}

	public void setBloodWh(int bloodWh) {
		this.bloodWh = bloodWh;
	}

	public int getBloodIn() {
		return bloodIn;
	}

	public void setBloodIn(int bloodIn) {
		this.bloodIn = bloodIn;
	}

	public Date getBloodDate() {
		return bloodDate;
	}

	public void setBloodDate(Date bloodDate) {
		this.bloodDate = bloodDate;
	}

	public String getBloodOwner() {
		return bloodOwner;
	}

	public void setBloodOwner(String bloodOwner) {
		this.bloodOwner = bloodOwner;
	}

	@Override
	public String toString() {
		return "Dashboard [bloodNo=" + bloodNo + ", bloodCount=" + bloodCount + ", bloodWh=" + bloodWh + ", bloodIn="
				+ bloodIn + ", bloodDate=" + bloodDate + ", bloodOwner=" + bloodOwner + "]";
	}
	
	
	
	
	
	
	
	
}
