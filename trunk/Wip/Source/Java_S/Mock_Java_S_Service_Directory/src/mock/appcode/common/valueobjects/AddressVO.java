package mock.appcode.common.valueobjects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Organisation")
public class AddressVO {
	private int addressID;
	private String postCode;
	private TownVO townVO;
	private String ward;
	private String borough;
	private String localAuthority;
	private String unitaryAuthority;
	private String nhsAuthority;
	private String addressLine1;
	private String addressLine2;
	private String addressLine3;

	public AddressVO(int addressID, String postCode, TownVO townVO,
			String ward, String borough, String localAuthority,
			String unitaryAuthority, String nhsAuthority, String addressLine1,
			String addressLine2, String addressLine3) {
		super();
		this.addressID = addressID;
		this.postCode = postCode;
		this.townVO = townVO;
		this.ward = ward;
		this.borough = borough;
		this.localAuthority = localAuthority;
		this.unitaryAuthority = unitaryAuthority;
		this.nhsAuthority = nhsAuthority;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.addressLine3 = addressLine3;
	}

	public AddressVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "AddressID")
	public int getAddressID() {
		return addressID;
	}

	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}

	@Column(name = "PostCode")
	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	public TownVO getTownVO() {
		return townVO;
	}

	public void setTownVO(TownVO townVO) {
		this.townVO = townVO;
	}

	@Column(name = "Ward")
	public String getWard() {
		return ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	@Column(name = "Borough")
	public String getBorough() {
		return borough;
	}

	public void setBorough(String borough) {
		this.borough = borough;
	}

	@Column(name = "LocalAuthority")
	public String getLocalAuthority() {
		return localAuthority;
	}

	public void setLocalAuthority(String localAuthority) {
		this.localAuthority = localAuthority;
	}

	@Column(name = "UnitaryAuthority")
	public String getUnitaryAuthority() {
		return unitaryAuthority;
	}

	public void setUnitaryAuthority(String unitaryAuthority) {
		this.unitaryAuthority = unitaryAuthority;
	}

	@Column(name = "NHSAuthority")
	public String getNhsAuthority() {
		return nhsAuthority;
	}

	public void setNhsAuthority(String nhsAuthority) {
		this.nhsAuthority = nhsAuthority;
	}

	@Column(name = "AddressLine1")
	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	@Column(name = "AddressLine2")
	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	@Column(name = "AddressLine3")
	public String getAddressLine3() {
		return addressLine3;
	}

	public void setAddressLine3(String addressLine3) {
		this.addressLine3 = addressLine3;
	}

}
