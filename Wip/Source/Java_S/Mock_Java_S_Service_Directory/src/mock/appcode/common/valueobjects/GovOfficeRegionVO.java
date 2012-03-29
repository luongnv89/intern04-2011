package mock.appcode.common.valueobjects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "GovOfficeRegion")
public class GovOfficeRegionVO {
	private int govOfficeRegionID;
	private String govOfficeRegionName;

	public GovOfficeRegionVO(int govOfficeRegionID, String govOfficeRegionName) {
		super();
		this.govOfficeRegionID = govOfficeRegionID;
		this.govOfficeRegionName = govOfficeRegionName;
	}

	public GovOfficeRegionVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "GovOfficeRegionID")
	public int getGovOfficeRegionID() {
		return govOfficeRegionID;
	}

	public void setGovOfficeRegionID(int govOfficeRegionID) {
		this.govOfficeRegionID = govOfficeRegionID;
	}

	@Column(name = "GovOfficeRegionName")
	public String getGovOfficeRegionName() {
		return govOfficeRegionName;
	}

	public void setGovOfficeRegionName(String govOfficeRegionName) {
		this.govOfficeRegionName = govOfficeRegionName;
	}

}
