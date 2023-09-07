package com.pizzaorder.web.user.dao;

<<<<<<< HEAD
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pizzaorder.web.mybatis.SqlMapConfig;

public class UserDAO {
	
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = factory.openSession(true);
	}
	
	//회원가입
	public boolean join(UserDTO user) {
		boolean result = false;
		if(sqlSession.insert("User.join",user) != 0){
			result = true;
		}
		
		System.out.println(result);
		return result;
	}

	public boolean login(String userid, String userpw) {
		boolean result = false;
		
		HashMap<String, String>datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		if((Integer)sqlSession.selectOne("User.login",datas) ==1) {
			result = true;
		}
		
		return result;
		
	}
	// idcheck
	public boolean idcheck(String userid) {
	    boolean result = false;
	    
	    // 이미 존재하는 사용자인지 확인
	    int count = sqlSession.selectOne("User.idcheck", userid);
	    
	    if (count == 1) {
	        result = true; // 이미 사용 중인 아이디
	    }
	    
	    return result;
	}
	
	//logout
//	public boolean logout(String userid) {
//		boolean result = false;
//		int rowsAffected = sqlSession.delete("User.logout", userid);
//		
//		if(rowsAffected == 1) {
//			result = true;
//		}
//		return result;
//	}
//	
=======
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


public class UserDAO {
	 SqlSessionFactory factory = SqlMapConfig.getFactory();
	    SqlSession sqlSession;


	    public boolean checkId(String userid) {
	        boolean result = false;

	        // query 호출
	        int cnt = 0;
	        // 1 param : 어떤 쿼리를 호출할지
	        // 2 param : 쿼리 실행시 필요한 파라미터 값
	        cnt = sqlSession.selectOne("User.checkId",userid);
	        if( cnt >= 1 ) {
	            result = true;
	        }

	        return result;
	    }

	    public boolean join( UserDTO user ) {
	        boolean result = false;
	        if(sqlSession.insert("User.join", user) == 1) {
	            result = true;
	        }

	        return result;
	    }

	    public boolean login(String userid, String userpw) {
	        boolean result = false;
	        HashMap<String, String> datas = new HashMap<>();
	        datas.put("userid", userid);
	        datas.put("userpw", userpw);

	        if((Integer)sqlSession.selectOne("User.login",datas)==1){
	            result = true;
	        }
	        return result;
	    }

>>>>>>> 0f80dfcd8820ba23ccf38a712a9162e225405b1f
}
