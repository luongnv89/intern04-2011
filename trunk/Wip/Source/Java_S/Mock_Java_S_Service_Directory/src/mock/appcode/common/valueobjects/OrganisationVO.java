package mock.appcode.common.valueobjects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Organisation")
public class OrganisationVO {

	private int orgId;
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

	public OrganisationVO(int orgId, String orgName, ContactVO contactVO,
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

	public OrganisationVO(OrganisationVO org , AddressVO address) {
		
		this.orgId = org.orgId;
		this.orgName = org.orgName;
		this.contactVO = org.contactVO;
		this.orgShortDescription = org.orgShortDescription;
		this.addressVO = address;
		this.referenceDataVO = org.referenceDataVO;
		this.sic = org.sic;
		this.orgFullDescription = org.orgFullDescription;
		this.phone = org.phone;
		this.fax = org.fax;
		this.email = org.email;
		this.webAddress = org.webAddress;
		this.charityNumber = org.charityNumber;
		this.companyNumber = org.companyNumber;
		this.govOfficeRegionVO = org.govOfficeRegionVO;
		this.trustRegionVO = org.trustRegionVO;
		this.trustDistrictVO = org.trustDistrictVO;
		this.statusActive = org.statusActive;
		this.statusPreferred = org.statusPreferred;
		this.statusExpression = org.statusExpression;
	}
	
	
	@Id
	@GeneratedValue
	@Column(name = "OrgID")
	public int getOrgId() {
		return orgId;
	}

	public void setOrgId(int orgId) {
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
	@JoinColumn(name="ContactID")
	public ContactVO getContactVO() {
		return this.contactVO;
	}

	public void setContactVO(ContactVO contactVO) {
		this.contactVO = contactVO;
	}

	@Column(name = "OrgShortDescription")
	public String getOrgShortDescription() {
		return this.orgShortDescription;
	}

	public void setOrgShortDescription(String orgShortDescription) {
		this.orgShortDescription = orgShortDescription;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="AddressID")
	public AddressVO getAddressVO() {
		return addressVO;
	}

	public void setAddressVO(AddressVO addressVO) {
		this.addressVO = addressVO;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	public ReferenceDataVO getReferenceDataVO() {
		return referenceDataVO;
	}

	public void setReferenceDataVO(ReferenceDataVO referenceDataVO) {
		this.referenceDataVO = referenceDataVO;
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

	@ManyToOne(cascade = CascadeType.ALL)
	public GovOfficeRegionVO getGovOfficeRegionVO() {
		return govOfficeRegionVO;
	}

	public void setGovOfficeRegionVO(GovOfficeRegionVO govOfficeRegionVO) {
		this.govOfficeRegionVO = govOfficeRegionVO;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	public TrustRegionVO getTrustRegionVO() {
		return trustRegionVO;
	}

	public void setTrustRegionVO(TrustRegionVO trustRegionVO) {
		this.trustRegionVO = trustRegionVO;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	public TrustDistrictVO getTrustDistrictVO() {
		return trustDistrictVO;
	}

	public void setTrustDistrictVO(TrustDistrictVO trustDistrictVO) {
		this.trustDistrictVO = trustDistrictVO;
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
