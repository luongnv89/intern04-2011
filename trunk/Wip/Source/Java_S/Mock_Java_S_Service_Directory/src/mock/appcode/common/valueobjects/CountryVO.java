package mock.appcode.common.valueobjects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Country")
public class CountryVO {
	private int countryID;
	private String countryName;

	public CountryVO(int countryID, String countryName) {
		super();
		this.countryID = countryID;
		this.countryName = countryName;
	}

	public CountryVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "CountryID")
	public int getCountryID() {
		return countryID;
	}

	public void setCountryID(int countryID) {
		this.countryID = countryID;
	}

	@Column(name = "CountryName")
	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

}
