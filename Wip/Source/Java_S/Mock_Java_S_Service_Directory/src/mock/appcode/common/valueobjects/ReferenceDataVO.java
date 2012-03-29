package mock.appcode.common.valueobjects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ReferenceData")
public class ReferenceDataVO {

	private int refID;
	private String refCode;
	private String refValue;

	public ReferenceDataVO(int refID, String refCode, String refValue) {
		super();
		this.refID = refID;
		this.refCode = refCode;
		this.refValue = refValue;
	}

	public ReferenceDataVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "RefID")
	public int getRefID() {
		return refID;
	}

	public void setRefID(int refID) {
		this.refID = refID;
	}

	@Column(name = "RefCode")
	public String getRefCode() {
		return refCode;
	}

	public void setRefCode(String refCode) {
		this.refCode = refCode;
	}

	@Column(name = "RefValue")
	public String getRefValue() {
		return refValue;
	}

	public void setRefValue(String refValue) {
		this.refValue = refValue;
	}

}
