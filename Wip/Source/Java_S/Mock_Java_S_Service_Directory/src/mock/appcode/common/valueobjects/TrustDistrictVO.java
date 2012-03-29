package mock.appcode.common.valueobjects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TrustDistrict")
public class TrustDistrictVO {

	private int trustDistrictID;
	private String trustDistrictName;
	private String trustDistrictDescription;
	private TrustRegionVO trustRegionVO;

	public TrustDistrictVO(int trustDistrictID, String trustDistrictName,
			String trustDistrictDescription, TrustRegionVO trustRegionVO) {
		super();
		this.trustDistrictID = trustDistrictID;
		this.trustDistrictName = trustDistrictName;
		this.trustDistrictDescription = trustDistrictDescription;
		this.trustRegionVO = trustRegionVO;
	}

	public TrustDistrictVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "TrustDistrictID")
	public int getTrustDistrictID() {
		return trustDistrictID;
	}

	public void setTrustDistrictID(int trustDistrictID) {
		this.trustDistrictID = trustDistrictID;
	}

	@Column(name = "TrustDistrictName")
	public String getTrustDistrictName() {
		return trustDistrictName;
	}

	public void setTrustDistrictName(String trustDistrictName) {
		this.trustDistrictName = trustDistrictName;
	}

	@Column(name = "TrustDistrictDescription")
	public String getTrustDistrictDescription() {
		return trustDistrictDescription;
	}

	public void setTrustDistrictDescription(String trustDistrictDescription) {
		this.trustDistrictDescription = trustDistrictDescription;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	public TrustRegionVO getTrustRegionVO() {
		return trustRegionVO;
	}

	public void setTrustRegionVO(TrustRegionVO trustRegionVO) {
		this.trustRegionVO = trustRegionVO;
	}

}
