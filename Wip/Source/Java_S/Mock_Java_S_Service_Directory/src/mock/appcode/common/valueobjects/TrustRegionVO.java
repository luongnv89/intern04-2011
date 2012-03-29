package mock.appcode.common.valueobjects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="TrustRegion")
public class TrustRegionVO {
	private int trustRegionID;
	private String trustRegionName;
	private String trustRegionDescription;
	private CountryVO countryVO;

	public TrustRegionVO(int trustRegionID, String trustRegionName,
			String trustRegionDescription, CountryVO countryVO) {
		super();
		this.trustRegionID = trustRegionID;
		this.trustRegionName = trustRegionName;
		this.trustRegionDescription = trustRegionDescription;
		this.countryVO = countryVO;
	}

	public TrustRegionVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "TrustRegionID")
	public int getTrustRegionID() {
		return trustRegionID;
	}

	public void setTrustRegionID(int trustRegionID) {
		this.trustRegionID = trustRegionID;
	}

	@Column(name = "TrustRegionName")
	public String getTrustRegionName() {
		return trustRegionName;
	}

	public void setTrustRegionName(String trustRegionName) {
		this.trustRegionName = trustRegionName;
	}

	@Column(name = "TrustRegionDescription")
	public String getTrustRegionDescription() {
		return trustRegionDescription;
	}

	public void setTrustRegionDescription(String trustRegionDescription) {
		this.trustRegionDescription = trustRegionDescription;
	}

	@ManyToOne(cascade=CascadeType.ALL)
	public CountryVO getCountryVO() {
		return countryVO;
	}

	public void setCountryVO(CountryVO countryVO) {
		this.countryVO = countryVO;
	}

	

}
