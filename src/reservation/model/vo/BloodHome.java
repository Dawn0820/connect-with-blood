package reservation.model.vo;

public class BloodHome {

	private int blHomeNo;						//	BLHOME_NO	NUMBER
	private String blHomeName;					//	BLHOME_NAME	VARCHAR2(100 BYTE)
	private String blHomeAddress;				//	BLHOME_ADDRESS	VARCHAR2(500 BYTE)
	private String blHomeAddress2;				//	BLHOME_ADDRESS2	VARCHAR2(500 BYTE) - 상세주소
	private String blHomePhoneNo;				//	BLHOME_PHONENO	VARCHAR2(100 BYTE)
	
	public BloodHome() {
		super();
	}

	public BloodHome(int blHomeNo, String blHomeName, String blHomeAddress, String blHomeAddress2,
			String blHomePhoneNo) {
		super();
		this.blHomeNo = blHomeNo;
		this.blHomeName = blHomeName;
		this.blHomeAddress = blHomeAddress;
		this.blHomeAddress2 = blHomeAddress2;
		this.blHomePhoneNo = blHomePhoneNo;
	}

	public BloodHome(String blHomeAddress, String blHomeAddress2) {
		super();
		this.blHomeAddress = blHomeAddress;
		this.blHomeAddress2 = blHomeAddress2;
	}

	public int getBlHomeNo() {
		return blHomeNo;
	}

	public void setBlHomeNo(int blHomeNo) {
		this.blHomeNo = blHomeNo;
	}

	public String getBlHomeName() {
		return blHomeName;
	}

	public void setBlHomeName(String blHomeName) {
		this.blHomeName = blHomeName;
	}

	public String getBlHomeAddress() {
		return blHomeAddress;
	}

	public void setBlHomeAddress(String blHomeAddress) {
		this.blHomeAddress = blHomeAddress;
	}

	public String getBlHomeAddress2() {
		return blHomeAddress2;
	}

	public void setBlHomeAddress2(String blHomeAddress2) {
		this.blHomeAddress2 = blHomeAddress2;
	}

	public String getBlHomePhoneNo() {
		return blHomePhoneNo;
	}

	public void setBlHomePhoneNo(String blHomePhoneNo) {
		this.blHomePhoneNo = blHomePhoneNo;
	}

	@Override
	public String toString() {
		return "BloodHome [blHomeNo=" + blHomeNo + ", blHomeName=" + blHomeName + ", blHomeAddress=" + blHomeAddress
				+ ", blHomeAddress2=" + blHomeAddress2 + ", blHomePhoneNo=" + blHomePhoneNo + "]";
	}
	
}
