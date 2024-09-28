package com.nikhil.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.tagext.TryCatchFinally;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nikhil.beans.ContactBean;
import com.nikhil.beans.MemberBean;
import com.nikhil.beans.MembersBO;
import com.nikhil.dao.users_dao;

@Service
public class users_service {
	
	Logger logger = LoggerFactory.getLogger(users_service.class);

	@Autowired
	private users_dao dao;
	
	public String getLogin(String email,String password ) {
		logger.info("getLogin method", email,password);
		try {
		MembersBO b=dao.getLogin(email,password);
		
		if ("User".equals(b.role)) {
            return "user";    
        } 
		else if ("Admin".equals(b.role)) {
            return "admin";
        } 
		else {
            return "Failure";
        }
		
		}catch(Exception e) {
			System.out.println("exception"+e.getMessage());
			return "failure";
			
		}
	}
	
	
	public int getRegisterNew(MembersBO bo) throws ClassNotFoundException, SQLException {
		return dao.regDetails(bo);
	}

	public int insertDetails(MembersBO bo ) throws ClassNotFoundException, SQLException {
	
		return dao.insrtDetails(bo);
		
	}
	
	public List<MembersBO>  getMember(){
		return dao.getMembers();
		
	}
	
	public MembersBO getById(String id) {
		logger.info("get by id", id);
		return dao.getById(id);
		
	}
	
	public int updateDetails(MembersBO bo) {
		return dao.updataData(bo);
		
	}
	public int deleteData(String id) {
		logger.info("delete method", id);
		try {
			String s = id;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("delete error");
		}
		return dao.deleteData(id);
		
	}
	
	public int contactData(ContactBean cb) {
		logger.info("contact method", cb);
		try {
			String s = cb.Email_id;
			String s1 = cb.Message;
			String s2 = cb.Name;
			String s3 = cb.Phone_no;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("contact error");
		}
		
		return dao.contactData(cb);
		
		
	}


	public String getAllUser() {
		return null;
		// TODO Auto-generated method stub
		
	}


	public int insertDetails1(MembersBO bo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
