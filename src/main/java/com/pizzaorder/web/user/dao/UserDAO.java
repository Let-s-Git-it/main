package com.pizzaorder.web.user.dao;

import java.util.HashMap;
import java.util.List;
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

    public boolean insertBoard(UserDTO board) {
        boolean result = false;

        if (sqlSession.insert("Board.insertBoard", board) != 0) {
            //성공시
            result = true;
        }

        return result;
    }

    public List<UserDTO> getBoardList(int startRow, int endRow) {
        HashMap<String, Integer> datas = new HashMap<>();
        datas.put("startRow", startRow);
        datas.put("endRow", endRow);


        List<UserDTO> list = sqlSession.selectList("Board.getBoardList", datas);

        System.out.println(list.get(0).getReviewnum());

        return list;
    }

    public int getBoardCnt() {

        return sqlSession.selectOne("Board.getBoardCnt");
    }
}