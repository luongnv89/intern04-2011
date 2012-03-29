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
public class OrganisationVO {
	private String orgId;
	private String orgName;

	private ContactVO contactVO;
	private String orgShortDescription;

	private AddressVO addressVO;
	private ReferenceDataVO referenceDataVO;

	private String sic;
	private String orgFullDescription;
	private String phone;
	private String fax;
	private String email;

	private String webAddress;
	private String charityNumber;

	private String companyNumber;
	private GovOfficeRegionVO govOfficeRegionVO;

	private TrustRegionVO trustRegionVO;

	private TrustDistrictVO trustDistrictVO;

	private int statusActive;
	private int statusPreferred;
	private int statusExpression;

	public OrganisationVO(String orgId, String orgName, ContactVO contactVO,
			String orgShortDescription, AddressVO addressVO,
			ReferenceDataVO referenceDataVO, String sic,
			String orgFullDescription, String phone, String fax, String email,
			String webAddress, String charityNumber, String companyNumber,
			GovOfficeRegionVO govOfficeRegionVO, TrustRegionVO trustRegionVO,
			TrustDistrictVO trustDistrictVO, int statusActive,
			int statusPreferred, int statusExpression) {
		super();
		this.orgId = orgId;
		this.orgName = orgName;
		this.contactVO = contactVO;
		this.orgShortDescription = orgShortDescription;
		this.addressVO = addressVO;
		this.referenceDataVO = referenceDataVO;
		this.sic = sic;
		this.orgFullDescription = orgFullDescription;
		this.phone = phone;
		this.fax = fax;
		this.email = email;
		this.webAddress = webAddress;
		this.charityNumber = charityNumber;
		this.companyNumber = companyNumber;
		this.govOfficeRegionVO = govOfficeRegionVO;
		this.trustRegionVO = trustRegionVO;
		this.trustDistrictVO = trustDistrictVO;
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

	@ManyToOne(cascade = CascadeType.ALL)
	public ContactVO getContactVO() {
		return this.contactVO;
	}

	public void setContactVO(ContactVO contactVO) {
		this.contactVO = contactVO;
	}

	public String getOrgShortDescription() {
		return this.orgShortDescription;
	}

	public void setOrgShortDescription(String orgShortDescription) {
		this.orgShortDescription = orgShortDescription;
	}

	public AddressVO getAddressVO() {
		return addressVO;
	}

	public void setAddressVO(AddressVO addressVO) {
		this.addressVO = addressVO;
	}

	public ReferenceDataVO getReferenceDataVO() {
		return referenceDataVO;
	}

	public void setReferenceDataVO(ReferenceDataVO referenceDataVO) {
		this.referenceDataVO = referenceDataVO;
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

	public GovOfficeRegionVO getGovOfficeRegionVO() {
		return govOfficeRegionVO;
	}

	public void setGovOfficeRegionVO(GovOfficeRegionVO govOfficeRegionVO) {
		this.govOfficeRegionVO = govOfficeRegionVO;
	}

	public TrustRegionVO getTrustRegionVO() {
		return trustRegionVO;
	}

	public void setTrustRegionVO(TrustRegionVO trustRegionVO) {
		this.trustRegionVO = trustRegionVO;
	}

	public TrustDistrictVO getTrustDistrictVO() {
		return trustDistrictVO;
	}

	public void setTrustDistrictVO(TrustDistrictVO trustDistrictVO) {
		this.trustDistrictVO = trustDistrictVO;
	}

	public int getStatusActive() {
		return statusActive;
	}

	public void setStatusActive(int statusActive) {
		this.statusActive = statusActive;
	}

	public int getStatusPreferred() {
		return statusPreferred;
	}

	public void setStatusPreferred(int statusPreferred) {
		this.statusPreferred = statusPreferred;
	}

	public int getStatusExpression() {
		return statusExpression;
	}

	public void setStatusExpression(int statusExpression) {
		this.statusExpression = statusExpression;
	}

}
