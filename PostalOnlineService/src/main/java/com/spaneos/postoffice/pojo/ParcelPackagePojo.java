package com.spaneos.postoffice.pojo;

public class ParcelPackagePojo {
	private String ptype;
	private String date;
	private String time;
	private String weight;
	private String cname;
	private String contact;
	private String address;
	private String city;
	private String state;
	private String zipcode;
	private String weigthin;
	public ParcelPackagePojo(){
		
	}
	public ParcelPackagePojo(String ptype, String date, String time,
			String weight, String cname, String contact, String address,
			String city, String state, String zipcode, String weigthin) {
		super();
		this.ptype = ptype;
		this.date = date;
		this.time = time;
		this.weight = weight;
		this.cname = cname;
		this.contact = contact;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.weigthin = weigthin;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getWeigthin() {
		return weigthin;
	}
	public void setWeigthin(String weigthin) {
		this.weigthin = weigthin;
	}
	@Override
	public String toString() {
		return "ParcelPackagePojo [ptype=" + ptype + ", date=" + date
				+ ", time=" + time + ", weight=" + weight + ", cname=" + cname
				+ ", contact=" + contact + ", address=" + address + ", city="
				+ city + ", state=" + state + ", zipcode=" + zipcode
				+ ", weigthin=" + weigthin + "]";
	}
	
}
