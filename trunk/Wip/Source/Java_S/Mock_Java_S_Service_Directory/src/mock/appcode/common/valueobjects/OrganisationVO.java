package mock.appcode.common.valueobjects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Organisation")
public class OrganisationVO {
	private String orgId;
	private String orgName;
	private String contactId;
	private String orgShortDescription;
	private String addressId;
	private int refId;

	private String sic;
	private String orgFullDescription;
	private String phone;
	private String fax;
	private String email;

	private String webAddress;
	private String charityNumber;

	private String companyNumber;
	private String govOfficeRegionId;
	private String trustRegionId;
	private String trustDistrictId;
	private int statusActive;

	private int statusPreferred;
	private int statusExpression;

	public OrganisationVO(String orgId, String orgName, String contactId,
			String orgShortDescription, String addressId, int refId,
			String sic, String orgFullDescription, String phone, String fax,
			String email, String webAddress, String charityNumber,
			String companyNumber, String govOfficeRegionId,
			String trustRegionId, String trustDistrictId, int statusActive,
			int statusPreferred, int statusExpression) {
		super();
		this.orgId = orgId;
		this.orgName = orgName;
		this.contactId = contactId;
		this.orgShortDescription = orgShortDescription;
		this.addressId = addressId;
		this.refId = refId;
		this.sic = sic;
		this.orgFullDescription = orgFullDescription;
		this.phone = phone;
		this.fax = fax;
		this.email = email;
		this.webAddress = webAddress;
		this.charityNumber = charityNumber;
		this.companyNumber = companyNumber;
		this.govOfficeRegionId = govOfficeRegionId;
		this.trustRegionId = trustRegionId;
		this.trustDistrictId = trustDistrictId;
		this.statusActive = statusActive;
		this.statusPreferred = statusPreferred;
		this.statusExpression = statusExpression;
	}

	public OrganisationVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "OrgID")
	public String getOrgId() {
		return orgId;
	}

	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}

	@Column(name = "OrgName")
	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	@Column(name = "ContactId")
	public String getContactId() {
		return contactId;
	}

	public void setContactId(String contactId) {
		this.contactId = contactId;
	}

	@Column(name = "OrgShortDescription")
	public String getOrgShortDescription() {
		return orgShortDescription;
	}

	public void setOrgShortDescription(String orgShortDescription) {
		this.orgShortDescription = orgShortDescription;
	}

	@Column(name = "AddressID")
	public String getAddressId() {
		return addressId;
	}

	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}

	@Column(name = "RefID")
	public int getRefId() {
		return refId;
	}

	public void setRefId(int refId) {
		this.refId = refId;
	}

	@Column(name = "SIC")
	public String getSic() {
		return sic;
	}

	public void setSic(String sic) {
		this.sic = sic;
	}

	@Column(name = "OrgFullDescription")
	public String getOrgFullDescription() {
		return orgFullDescription;
	}

	public void setOrgFullDescription(String orgFullDescription) {
		this.orgFullDescription = orgFullDescription;
	}

	@Column(name = "Phone")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "Fax")
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name = "Email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "WebAddress")
	public String getWebAddress() {
		return webAddress;
	}

	public void setWebAddress(String webAddress) {
		this.webAddress = webAddress;
	}

	@Column(name = "CharityNumber")
	public String getCharityNumber() {
		return charityNumber;
	}

	public void setCharityNumber(String charityNumber) {
		this.charityNumber = charityNumber;
	}

	@Column(name = "CompanyNumber")
	public String getCompanyNumber() {
		return companyNumber;
	}

	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}

	@Column(name = "GovOfficeRegionID")
	public String getGovOfficeRegionId() {
		return govOfficeRegionId;
	}

	public void setGovOfficeRegionId(String govOfficeRegionId) {
		this.govOfficeRegionId = govOfficeRegionId;
	}

	@Column(name = "TrustRegionID")
	public String getTrustRegionId() {
		return trustRegionId;
	}

	public void setTrustRegionId(String trustRegionId) {
		this.trustRegionId = trustRegionId;
	}

	@Column(name = "TrustDistrictID")
	public String getTrustDistrictId() {
		return trustDistrictId;
	}

	public void setTrustDistrictId(String trustDistrictId) {
		this.trustDistrictId = trustDistrictId;
	}

	@Column(name = "StatusActive")
	public int getStatusActive() {
		return statusActive;
	}

	public void setStatusActive(int statusActive) {
		this.statusActive = statusActive;
	}

	@Column(name = "StatusPreferred")
	public int getStatusPreferred() {
		return statusPreferred;
	}

	public void setStatusPreferred(int statusPreferred) {
		this.statusPreferred = statusPreferred;
	}

	@Column(name = "StatusExpression")
	public int getStatusExpression() {
		return statusExpression;
	}

	public void setStatusExpression(int statusExpression) {
		this.statusExpression = statusExpression;
	}

}
