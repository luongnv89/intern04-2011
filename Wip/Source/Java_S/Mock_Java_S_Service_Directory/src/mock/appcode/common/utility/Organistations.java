package mock.appcode.common.utility;

public class Organistations {
	private String orgid;
	private String orgName;
	private String contactId;
	private String orgShortDescription;
	private String addressId;

	private String sic;
	private String orgFullDescription;
	private String phone;
	private String fax;
	private String email;

	private String refID;
	private String webAddress;
	private String charityNumber;

	private String companyNumber;
	private String govOfficeRegionId;
	private String trustRegionId;
	private String trustDistrictId;
	private byte statusActive;

	private byte statusPreferred;
	private byte statusExpression;

	public String getOrgid() {
		return orgid;
	}

	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getContactId() {
		return contactId;
	}

	public void setContactId(String contactId) {
		this.contactId = contactId;
	}

	public String getOrgShortDescription() {
		return orgShortDescription;
	}

	public void setOrgShortDescription(String orgShortDescription) {
		this.orgShortDescription = orgShortDescription;
	}

	public String getAddressId() {
		return addressId;
	}

	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}

	public String getSic() {
		return sic;
	}

	public void setSic(String sic) {
		this.sic = sic;
	}

	public String getOrgFullDescription() {
		return orgFullDescription;
	}

	public void setOrgFullDescription(String orgFullDescription) {
		this.orgFullDescription = orgFullDescription;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebAddress() {
		return webAddress;
	}

	public void setWebAddress(String webAddress) {
		this.webAddress = webAddress;
	}

	public String getCharityNumber() {
		return charityNumber;
	}

	public void setCharityNumber(String charityNumber) {
		this.charityNumber = charityNumber;
	}

	public String getCompanyNumber() {
		return companyNumber;
	}

	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}

	public String getGovOfficeRegionId() {
		return govOfficeRegionId;
	}

	public void setGovOfficeRegionId(String govOfficeRegionId) {
		this.govOfficeRegionId = govOfficeRegionId;
	}

	public String getTrustRegionId() {
		return trustRegionId;
	}

	public void setTrustRegionId(String trustRegionId) {
		this.trustRegionId = trustRegionId;
	}

	public String getTrustDistrictId() {
		return trustDistrictId;
	}

	public void setTrustDistrictId(String trustDistrictId) {
		this.trustDistrictId = trustDistrictId;
	}

	public byte getStatusActive() {
		return statusActive;
	}

	public void setStatusActive(byte statusActive) {
		this.statusActive = statusActive;
	}

	public byte getStatusPreferred() {
		return statusPreferred;
	}

	public void setStatusPreferred(byte statusPreferred) {
		this.statusPreferred = statusPreferred;
	}

	public byte getStatusExpression() {
		return statusExpression;
	}

	public void setStatusExpression(byte statusExpression) {
		this.statusExpression = statusExpression;
	}

	public Organistations() {
		super();
	}

	public Organistations(String orgid, String orgName, String contactId,
			String orgShortDescription, String addressId, String sic,
			String orgFullDescription, String phone, String fax, String email,
			String refID, String webAddress, String charityNumber,
			String companyNumber, String govOfficeRegionId,
			String trustRegionId, String trustDistrictId, byte statusActive,
			byte statusPreferred, byte statusExpression) {
		super();
		this.orgid = orgid;
		this.orgName = orgName;
		this.contactId = contactId;
		this.orgShortDescription = orgShortDescription;
		this.addressId = addressId;
		this.sic = sic;
		this.orgFullDescription = orgFullDescription;
		this.phone = phone;
		this.fax = fax;
		this.email = email;
		this.refID = refID;
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

	public String getRefID() {
		return refID;
	}

	public void setRefID(String refID) {
		this.refID = refID;
	}

}
