package com.pizzaorder.web.user.dao;

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
        //1 param : 어떤 쿼리를 호출할지
        //2 param : 쿼리 실행시 필요한 파라미터 값
        if (sqlSession.insert("User.join", user) != 0) {
            result = true;
        }

        return result;
    }

    public boolean logincheck(String userid, String userpw) {
        boolean result = false;

        HashMap<String, String> datas = new HashMap<>();
        datas.put("userid", userid);
        datas.put("userpw", userpw);

        if ((Integer) sqlSession.selectOne("User.logincheck", datas) == 1) {
            result = true;
        }

        return result;

    }


    public boolean checkId(String userid) {
        boolean result = false;
        //query호출
        int cnt = 0;
        //1 param : 어떤 쿼리를 호출할지
        //2 param : 쿼리 실행시 필요한 파라미터 값
        cnt = sqlSession.selectOne("User.checkId", userid);
        if (cnt >= 1) {
            result = true;
        }

        return result;
    }

    public boolean checkPW(String userpw) {
        boolean result = false;
        //query호출
        int cnt = 0;
        //1 param : 어떤 쿼리를 호출할지
        //2 param : 쿼리 실행시 필요한 파라미터 값
        cnt = sqlSession.selectOne("User.checkPW", userpw);
        if (cnt >= 1) {
            result = true;
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
}