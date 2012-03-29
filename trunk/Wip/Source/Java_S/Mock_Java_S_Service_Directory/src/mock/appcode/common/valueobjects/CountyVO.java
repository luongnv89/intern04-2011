package mock.appcode.common.valueobjects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "County")
public class CountyVO {

	private int countyID;
	private CountryVO countryVO;
	private String countyName;

	public CountyVO(int countyID, CountryVO countryVO, String countyName) {
		super();
		this.countyID = countyID;
		this.countryVO = countryVO;
		this.countyName = countyName;
	}

	public CountyVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "CountyID")
	public int getCountyID() {
		return countyID;
	}

	public void setCountyID(int countyID) {
		this.countyID = countyID;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	public CountryVO getCountryVO() {
		return countryVO;
	}

	public void setCountryVO(CountryVO countryVO) {
		this.countryVO = countryVO;
	}

	@Column(name = "CountyName")
	public String getCountyName() {
		return countyName;
	}

	public void setCountyName(String countyName) {
		this.countyName = countyName;
	}

}
