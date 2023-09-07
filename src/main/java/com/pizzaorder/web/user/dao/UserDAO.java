package com.pizzaorder.web.user.dao;

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

}
