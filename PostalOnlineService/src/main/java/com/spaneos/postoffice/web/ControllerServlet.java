package com.spaneos.postoffice.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spaneos.postoffice.Service.DaoServiceImp;
import com.spaneos.postoffice.Inf.DaoInf;
import com.spaneos.postoffice.pojo.ParcelPackagePojo;
import com.spaneos.postoffice.pojo.RegisterPojo;

/**
 * Servlet implementation class ControllerServlet
 *//*
@WebServlet("*.do")*/
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public DaoInf daoInf=null;
	List<ParcelPackagePojo> parcelList=new ArrayList<ParcelPackagePojo>();
    /**
     * Default constructor. 
     */
    public ControllerServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String uri=request.getRequestURI();
		 System.out.println(uri);
		 daoInf=DaoServiceImp.getInstance();
		 HttpSession httpSession=request.getSession();
		 if(uri.contains("register.do")){
			 String firstName=request.getParameter("fname");
			 String middleName=request.getParameter("mname");
			 String lastName=request.getParameter("lname");
			 String dob=request.getParameter("dob");
			 String gender=request.getParameter("gender");
			 String email=request.getParameter("email");
			 String password=request.getParameter("password");
			 String contact=request.getParameter("pcontact");
			 String pAddress=request.getParameter("pAddress");
			 String pState=request.getParameter("pState");
			 String pCity=request.getParameter("pCity");
			 String pZipcode=request.getParameter("pZipcode");
			 String oAddress=request.getParameter("oAddress");
			 String oState=request.getParameter("oState");
			 String oCity=request.getParameter("oCity");
			 String oZipcode=request.getParameter("oZipcode");
			 RegisterPojo registerPojo=new RegisterPojo();
			 boolean isAdded=daoInf.register(firstName,middleName,lastName,dob,gender,email,password,contact,pAddress,pState,pCity,pZipcode,oAddress,oState,oCity,oZipcode);
			 if(isAdded){
				 System.out.println("added");
				 httpSession.setAttribute("email", email);
				 List<RegisterPojo> list=daoInf.getAddress(email,password);
				 request.setAttribute("firstName", firstName);
				 request.setAttribute("list", list);
				 System.out.println(list);
				 request.getRequestDispatcher("pickup.jsp").forward(request, response);
			 }else{
				 request.getRequestDispatcher("register.jsp").forward(request, response);
			 }
		 }else if(uri.contains("parcelpickup.do")){
			 String ptype=request.getParameter("ptype");
			 String datepicker=request.getParameter("datepicker");
			 String timepicker=request.getParameter("timepicker");
			 String weight=request.getParameter("weight");
			 String weigthin=request.getParameter("weigthin");
			 String addresstype=request.getParameter("addresstype");
			 
			 String cname=request.getParameter("cname");
			 String contact=request.getParameter("contact");
			 String pAddress=request.getParameter("pAddress");
			 String pCity=request.getParameter("pCity");
			 String pState=request.getParameter("pState");
			 String pZipcode=request.getParameter("pZipcode");
			 ParcelPackagePojo packagePojo=new ParcelPackagePojo();
			 packagePojo.setPtype(ptype);
			 packagePojo.setDate(datepicker);
			 packagePojo.setTime(timepicker);
			 packagePojo.setWeight(weight);
			 packagePojo.setCname(cname);
			 packagePojo.setContact(contact);
			 packagePojo.setAddress(pAddress);
			 packagePojo.setCity(pCity);
			 packagePojo.setState(pState);
			 packagePojo.setZipcode(pZipcode);
			 packagePojo.setWeigthin(weigthin);
			 parcelList.add(packagePojo);
			 String email=(String) httpSession.getAttribute("email");
			 /*if(addresstype.equals("home")){
				 System.out.println("home");*/
				List<RegisterPojo> list=daoInf.getAddressOne(email);
				//System.out.println(list);
				String firstname=null;
				String contactone=null;
				String haddress=null;
				String hcity=null;
				String hstate=null;
				String hzipcode=null;
				for (RegisterPojo registerPojo : list) {
					if(addresstype.equals("home")){
						System.out.println(addresstype);
					firstname =registerPojo.getFirstName();
					System.out.println();
					contactone =registerPojo.getContact();
					 haddress=registerPojo.getpAddress();
					hcity=registerPojo.getpCity();
					hstate=registerPojo.getpState();
					hzipcode=registerPojo.getpZipcode();
						//request.setAttribute("home",addresstype);
					}else{
						firstname =registerPojo.getFirstName();
						 contactone =registerPojo.getContact();
						haddress=registerPojo.getoAddress();
						hcity=registerPojo.getoCity();
						 hstate=registerPojo.getoState();
						 hzipcode=registerPojo.getoZipcode();
						 
					}
				}
				
				request.setAttribute("firstname",firstname);
				request.setAttribute("contactone",contactone);
				request.setAttribute("haddress",haddress);
				request.setAttribute("hcity",hcity);
				request.setAttribute("hstate",hstate);
				request.setAttribute("hzipcode",hzipcode);
				request.setAttribute("regAddress", list);
			
			 request.setAttribute("parcelList", parcelList);
			 request.getRequestDispatcher("confirmpage.jsp").forward(request, response);
			 System.out.println(ptype+""+datepicker+""+timepicker+""+weight+""+addresstype);
		 }
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
