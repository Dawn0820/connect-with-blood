package member.model.vo;

import java.sql.Date;

public class BloodInfo {

	
	//BloodInfo Å×ÀÌºí
	private String bloodNo;					//				BLOOD_NO	VARCHAR2(100 BYTE)
	private int bloodCount;					//				BLOOD_COUNT	NUMBER
	private int bloodWh;					//				BLOOD_WH	VARCHAR2(100 BYTE)
	private int bloodIn;					//				BLOOD_IN	VARCHAR2(100 BYTE)
	private Date bloodDate;					//				BLOOD_DATE	DATE
	private int bloodOwner;					//				BLOOD_OWNER	NUMBER
	
	
	
	public BloodInfo() {
		// TODO Auto-generated constructor stub
	}



	public BloodInfo(String bloodNo, int bloodCount, int bloodWh, int bloodIn, Date bloodDate, int bloodOwner) {
		super();
		this.bloodNo = bloodNo;
		this.bloodCount = bloodCount;
		this.bloodWh = bloodWh;
		this.bloodIn = bloodIn;
		this.bloodDate = bloodDate;
		this.bloodOwner = bloodOwner;
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



	public int getBloodOwner() {
		return bloodOwner;
	}



	public void setBloodOwner(int bloodOwner) {
		this.bloodOwner = bloodOwner;
	}



	@Override
	public String toString() {
		return "BloodInfo [bloodNo=" + bloodNo + ", bloodCount=" + bloodCount + ", bloodWh=" + bloodWh + ", bloodIn="
				+ bloodIn + ", bloodDate=" + bloodDate + ", bloodOwner=" + bloodOwner + "]";
	}
	
	
}
