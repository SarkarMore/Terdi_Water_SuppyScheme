package com.nikhil.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nikhil.beans.ContactBean;
import com.nikhil.beans.MemberBean;
import com.nikhil.beans.MembersBO;

@Repository
public class users_dao {


	public String QUERY="select ROLE,EMAIL_ID,PASSWORD from database1.users where EMAIL_ID=? and PASSWORD=?"; 
	public String SQL_QUERY = "insert into database1.users (ROLE,FIRST_NAME,MIDDLE_NAME,LAST_NAME,PASSWORD,DOB,ADDRESS,EMAIL_ID,MOBILE_NUMBER,REG_DATE) values(?,?,?,?,?,?,?,?,?,?)";
	public String INSERT_QUERY= "insert into database1.members_terdi(FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ID,DOB,MOBILE_NUMBER) value(?,?,?,?,?,?)";
	public String SELECT_QUERY = "select id,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ID,DOB,ROLE,MOBILE_NUMBER from database1.users";
	public String UPDATE_QUERY ="select * from database1.users where id=?";
	public String UPDATE_DETAILS="update database1.users set FIRST_NAME=?,MIDDLE_NAME=?,LAST_NAME=?,EMAIL_ID=?,DOB=?,MOBILE_NUMBER=? where id=?";
	public String DELETE_QUERY="delete from database1.users where id=?";
	public String CONTACT_QUERY="insert into database1.contact_us(Name,Email_id,Phone_no,Message) value(?,?,?,?)";


	@Autowired
	public  JdbcTemplate jdbcTemplate;

	Logger logger = LoggerFactory.getLogger(users_dao.class);



	public MembersBO getLogin(String email,String password) {
		logger.info("MemberBo method", email,password);
		
		return (MembersBO) jdbcTemplate.queryForObject(QUERY, new Object[] {email,password}, new BeanPropertyRowMapper<MembersBO>(MembersBO.class));

	}
	
	SimpleDateFormat sds = new SimpleDateFormat("dd/MM/yy HH:mm:yy");
	String register_date = sds.format(new Date());

	public int regDetails(MembersBO bo) {
		String role = bo.getRole().substring(0, 1).toUpperCase() + bo.getRole().substring(1).toLowerCase();
		int counter = jdbcTemplate.update(SQL_QUERY,role,bo.getFirst_name(),bo.getMiddle_name(),bo.getLast_name(),bo.getPassword(),bo.getDob(),bo.getAddress(),bo.getEmail_id(),bo.getMobile_number(), register_date);
		try {
			int counter1= counter;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("reg error");
		}

		return counter;

	}
	public int insrtDetails(MembersBO bo)  {

		logger.info("insrtDetails method", bo);
		int result = jdbcTemplate.update(INSERT_QUERY,bo.getFirst_name(),bo.getMiddle_name(),bo.getLast_name(),bo.getEmail_id(),bo.getDob(),bo.getMobile_number());

		try {
			int result1 = result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("insert error");
		}
		return result;

	}

	public List<MembersBO> getMembers(){

		List<MembersBO> list  =null;
		list = jdbcTemplate.query(SELECT_QUERY, new BeanPropertyRowMapper(MembersBO.class));
		try {
			List list1= list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("Member list error");
		}
		return list;

	} 


	public MembersBO getById(String id) {
		logger.info("getById method", id);
		return jdbcTemplate.queryForObject(UPDATE_QUERY, new Object[] {id}, new BeanPropertyRowMapper<MembersBO>(MembersBO.class));

	}

	public int updataData(MembersBO bo) {
		logger.info("update date method", bo);
		return jdbcTemplate.update(UPDATE_DETAILS,bo.getFirst_name(),bo.getMiddle_name(),bo.getLast_name(),bo.getEmail_id(),bo.getDob(),bo.getMobile_number(),bo.getId());

	}

	public int deleteData(String id) {
		logger.info("delete method", id);

		try {

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("delete error");
		}
		return jdbcTemplate.update(DELETE_QUERY, id);

	}

	public int contactData(ContactBean cb) {
		logger.info("contact data method", cb);

		int contact = jdbcTemplate.update(CONTACT_QUERY, cb.getName(),cb.getEmail_id(),cb.getPhone_no(),cb.getMessage());
		try {
			int contact1 = contact;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("contact data error");
		}
		return contact;

	}


}
