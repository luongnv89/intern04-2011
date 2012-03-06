package mock.appcode.common.utility;

public class Organistations {

	private String orgID;
	private String orgName;
	private String contactID;
	private String serviceID;
	private String shortDescription;
	private String addressID;
	private String sic;
	private String refID;
	private String fullDescription;
	private String phone;
	private String fax;
	private String email;
	private String webAddress;
	private String charityNumber;
	private String companyNumber;
	private byte statusActive;
	private byte statusPreferred;
	private byte statusExpression;

	public Organistations() {
		super();
	}

	public Organistations(String orgID, String orgName, String contactID,
			String serviceID, String shortDescription, String addressID,
			String sic, String refID, String fullDescription, String phone,
			String fax, String email, String webAddress, String charityNumber,
			String companyNumber, Byte statusActive, Byte statusPreferred,
			Byte statusExpression) {
		super();
		this.orgID = orgID;
		this.orgName = orgName;
		this.contactID = contactID;
		this.serviceID = serviceID;
		this.shortDescription = shortDescription;
		this.addressID = addressID;
		this.sic = sic;
		this.refID = refID;
		this.fullDescription = fullDescription;
		this.phone = phone;
		this.fax = fax;
		this.email = email;
		this.webAddress = webAddress;
		this.charityNumber = charityNumber;
		this.companyNumber = companyNumber;
		this.statusActive = statusActive;
		this.statusPreferred = statusPreferred;
		this.statusExpression = statusExpression;
	}

}
