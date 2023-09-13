package com.pizzaorder.web.user.dao;

import java.util.HashMap;
import java.util.Map;

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
/*    public boolean join(UserDTO user) {
        boolean result = false;
        //1 param : 어떤 쿼리를 호출할지
        //2 param : 쿼리 실행시 필요한 파라미터 값
        if (sqlSession.insert("User.join", user) != 0) {
            result = true;
        }

        return result;
    }*/
    public boolean join(UserDTO user) {
        try (SqlSession sqlSession = factory.openSession(true)) {
            int rowsInserted = sqlSession.insert("User.join", user);
            return rowsInserted > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean logincheck(String userid, String userpw) {
        try (SqlSession sqlSession = factory.openSession()) {
            Map<String, String> paramMap = new HashMap<>();
            paramMap.put("userid", userid);
            paramMap.put("userpw", userpw);

            int count = sqlSession.selectOne("User.logincheck", paramMap);
            return count == 1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkId(String userid) {
        try (SqlSession sqlSession = factory.openSession()) {
            int count = sqlSession.selectOne("User.checkId", userid);
            return count >= 1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkPW(String userpw) {
        try (SqlSession sqlSession = factory.openSession()) {
            int count = sqlSession.selectOne("User.checkPW", userpw);
            return count >= 1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
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