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

    public boolean join(UserDTO user) {
        try (SqlSession sqlSession = factory.openSession(true)) {
            int rowsInserted = sqlSession.insert("User.join", user);
            return rowsInserted > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean UserLoginOk(String userid, String userpw) {
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
    public String namecheck(String userid, String userpw) {
        String username = null;
        try {
            Map<String, String> idMap = new HashMap<>();
            // MyBatis를 사용하여 SQL 쿼리 실행
           username = sqlSession.selectOne("User.idcheck", idMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return username;

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