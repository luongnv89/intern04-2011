package mock.appcode.common.valueobjects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Contact")
public class ContactVO {
	private int contactID;
	private String firstName;

	private String lastName;
	private int statusActive;

	private String surName;
	private String mobilePhone;

	private String email;
	private String contactType;

	private String knowAs;
	private String officePhone;

	private String stHomePhone;
	private String managerName;

	private String bestContactMethod;
	private String jobRole;

	private String workBase;
	private String jobTitle;

	public ContactVO(int contactID, String firstName, String lastName,
			int statusActive, String surName, String mobilePhone, String email,
			String contactType, String knowAs, String officePhone,
			String stHomePhone, String managerName, String bestContactMethod,
			String jobRole, String workBase, String jobTitle) {
		super();
		this.contactID = contactID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.statusActive = statusActive;
		this.surName = surName;
		this.mobilePhone = mobilePhone;
		this.email = email;
		this.contactType = contactType;
		this.knowAs = knowAs;
		this.officePhone = officePhone;
		this.stHomePhone = stHomePhone;
		this.managerName = managerName;
		this.bestContactMethod = bestContactMethod;
		this.jobRole = jobRole;
		this.workBase = workBase;
		this.jobTitle = jobTitle;
	}

	public ContactVO() {
		super();
	}

	@Id
	@GeneratedValue
	@Column(name = "ContactID")
	public int getContactID() {
		return contactID;
	}

	public void setContactID(int contactID) {
		this.contactID = contactID;
	}

	@Column(name = "FirstName")
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "LastName")
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "StatusActive")
	public int getStatusActive() {
		return statusActive;
	}

	public void setStatusActive(int statusActive) {
		this.statusActive = statusActive;
	}

	@Column(name = "SurName")
	public String getSurName() {
		return surName;
	}

	public void setSurName(String surName) {
		this.surName = surName;
	}

	@Column(name = "Mobile")
	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	@Column(name = "Email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "ContactType")
	public String getContactType() {
		return contactType;
	}

	public void setContactType(String contactType) {
		this.contactType = contactType;
	}

	@Column(name = "KnowAs")
	public String getKnowAs() {
		return knowAs;
	}

	public void setKnowAs(String knowAs) {
		this.knowAs = knowAs;
	}

	@Column(name = "OfficePhone")
	public String getOfficePhone() {
		return officePhone;
	}

	public void setOfficePhone(String officePhone) {
		this.officePhone = officePhone;
	}

	@Column(name = "STHomePhone")
	public String getStHomePhone() {
		return stHomePhone;
	}

	public void setStHomePhone(String stHomePhone) {
		this.stHomePhone = stHomePhone;
	}

	@Column(name = "ManagerName")
	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	@Column(name = "BestContactMethod")
	public String getBestContactMethod() {
		return bestContactMethod;
	}

	public void setBestContactMethod(String bestContactMethod) {
		this.bestContactMethod = bestContactMethod;
	}

	@Column(name = "JobRole")
	public String getJobRole() {
		return jobRole;
	}

	public void setJobRole(String jobRole) {
		this.jobRole = jobRole;
	}

	@Column(name = "WorkBase")
	public String getWorkBase() {
		return workBase;
	}

	public void setWorkBase(String workBase) {
		this.workBase = workBase;
	}

	@Column(name = "JobTitle")
	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

}
