package com.spaneos.postoffice.Inf;

import java.util.List;

import com.spaneos.postoffice.pojo.RegisterPojo;

public interface DaoInf {
	//boolean register(firstName, middleName,lastName,dob,gender,email,password,contact,pAddress,pState,pCity,pZipcode,oAddress,oState,oCity, oZipcode);

	boolean register(String firstName, String middleName, String lastName,
			String dob, String gender, String email, String password,
			String contact, String pAddress, String pState, String pCity,
			String pZipcode, String oAddress, String oState, String oCity,
			String oZipcode);

	boolean login(String email, String password);

	List<RegisterPojo> getAddress(String email, String password);

	List<RegisterPojo> getContact(String email, String contact);

	List<RegisterPojo> getAddressOne(String email);

	

	
}
