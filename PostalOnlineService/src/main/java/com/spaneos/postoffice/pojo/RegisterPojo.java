package com.spaneos.postoffice.pojo;

public class RegisterPojo {
	private String firstName;
	private String middleName;
	private String lasstName;
	private String dob;
	private String gender;
	private String email;
	private String password;
	private String contact;
	private String pAddress;
	private String pState;
	private String pCity;
	private String pZipcode;
	private String oAddress;
	private String oState;
	private String oCity;
	private String oZipcode;
	public RegisterPojo(String firstName, String middleName, String lasstName,
			String dob, String gender, String email, String password,
			String contact, String pAddress, String pState, String pCity,
			String pZipcode, String oAddress, String oState, String oCity,
			String oZipcode) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lasstName = lasstName;
		this.dob = dob;
		this.gender = gender;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.pAddress = pAddress;
		this.pState = pState;
		this.pCity = pCity;
		this.pZipcode = pZipcode;
		this.oAddress = oAddress;
		this.oState = oState;
		this.oCity = oCity;
		this.oZipcode = oZipcode;
	}
	public RegisterPojo() {
		// TODO Auto-generated constructor stub
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLasstName() {
		return lasstName;
	}
	public void setLasstName(String lasstName) {
		this.lasstName = lasstName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getpAddress() {
		return pAddress;
	}
	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}
	public String getpState() {
		return pState;
	}
	public void setpState(String pState) {
		this.pState = pState;
	}
	public String getpCity() {
		return pCity;
	}
	public void setpCity(String pCity) {
		this.pCity = pCity;
	}
	public String getpZipcode() {
		return pZipcode;
	}
	public void setpZipcode(String pZipcode) {
		this.pZipcode = pZipcode;
	}
	public String getoAddress() {
		return oAddress;
	}
	public void setoAddress(String oAddress) {
		this.oAddress = oAddress;
	}
	public String getoState() {
		return oState;
	}
	public void setoState(String oState) {
		this.oState = oState;
	}
	public String getoCity() {
		return oCity;
	}
	public void setoCity(String oCity) {
		this.oCity = oCity;
	}
	public String getoZipcode() {
		return oZipcode;
	}
	public void setoZipcode(String oZipcode) {
		this.oZipcode = oZipcode;
	}
	@Override
	public String toString() {
		return "RegisterPojo [firstName=" + firstName + ", middleName="
				+ middleName + ", lasstName=" + lasstName + ", dob=" + dob
				+ ", gender=" + gender + ", email=" + email + ", password="
				+ password + ", contact=" + contact + ", pAddress=" + pAddress
				+ ", pState=" + pState + ", pCity=" + pCity + ", pZipcode="
				+ pZipcode + ", oAddress=" + oAddress + ", oState=" + oState
				+ ", oCity=" + oCity + ", oZipcode=" + oZipcode + "]";
	}
	
	
}
