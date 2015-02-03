package com.spaneos.postoffice.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.spaneos.postoffice.Inf.DaoInf;
import com.spaneos.postoffice.pojo.RegisterPojo;


public class DaoServiceImp implements DaoInf{
	RegisterPojo pojo=new RegisterPojo();
	static DaoInf daoInf=null;
	List<RegisterPojo> list=null;
	
	private  DaoServiceImp() {
		// TODO Auto-generated constructor stub
		list=new ArrayList<RegisterPojo>();
		list.add(new RegisterPojo( "Murali", "m","patil","06/04/88", "male","m@gmail.com", "123456", "7411447145",  "#12,ews", "karnataka", "bangalore","123123","#12,ews", "karnataka", "bangalore","560079"));
		
		
	}
	public static DaoInf getInstance(){
		if(daoInf==null)
			daoInf=new DaoServiceImp();
		return daoInf;
	}
	public boolean register(String firstName, String middleName,
			String lastName, String dob, String gender, String email,
			String password, String contact, String pAddress, String pState,
			String pCity, String pZipcode, String oAddress, String oState,
			String oCity, String oZipcode) {
		// TODO Auto-generated method stub
			//list=new ArrayList<RegisterPojo>();
			pojo.setFirstName(firstName);
			pojo.setMiddleName(middleName);
			pojo.setLasstName(lastName);
			pojo.setDob(dob);
			pojo.setGender(gender);
			pojo.setEmail(email);
			pojo.setPassword(password);
			pojo.setContact(contact);
			pojo.setpAddress(pAddress);
			pojo.setpState(pState);
			pojo.setpCity(pCity);
			pojo.setpZipcode(oZipcode);
			pojo.setoAddress(oAddress);
			pojo.setoState(oState);
			pojo.setoCity(oCity);
			pojo.setoZipcode(oZipcode);
			list.add(pojo);
			System.out.println("im in service implementation");
			//System.out.println(list);
			if(list.isEmpty()==true){
				return false;
			}
		return true;
	}
	@Override
	public boolean login(String email, String password) {
		// TODO Auto-generated method stub
		/*pojo.setEmail(email);
		pojo.setPassword(password);*/
		//System.out.println(email);
		System.out.println("in in login service imp");
		//System.out.println(list);
		Iterator<RegisterPojo> iterator=list.iterator();
		//System.out.println(iterator);
		while (iterator.hasNext()) {
			RegisterPojo poj = (RegisterPojo) iterator.next();
			//System.out.println(poj);
			if(email.equals(poj.getEmail())&&password.equals(poj.getPassword())){
				//System.out.println(poj.getEmail());
				return true;
			}
		}
		return false;
	}
	@Override
	public List<RegisterPojo> getAddress(String email, String password) {
		// TODO Auto-generated method stub
		System.out.println("in service");
		List<RegisterPojo> getList=new ArrayList<RegisterPojo>();
		for (RegisterPojo registerPojo : list) {
			if(email.equals(registerPojo.getEmail())&&password.equals(registerPojo.getPassword())){
				getList.add(registerPojo);
			}
		}
		return getList;
	}
	@Override
	public List<RegisterPojo> getContact(String email, String contact) {
		// TODO Auto-generated method stub
		List<RegisterPojo> getList=new ArrayList<RegisterPojo>();
		for (RegisterPojo registerPojo : list) {
			if(email.equals(registerPojo.getEmail())&&contact.equals(registerPojo.getContact())){
				getList.add(registerPojo);
			}
		}
		return getList;
	}
	@Override
	public List<RegisterPojo> getAddressOne(String email) {
		// TODO Auto-generated method stub
		List<RegisterPojo> getList=new ArrayList<RegisterPojo>();
		for (RegisterPojo registerPojo : list) {
			if(email.equals(registerPojo.getEmail())){
				getList.add(registerPojo);
			}
		}
		return getList;
	}
	

	
}
