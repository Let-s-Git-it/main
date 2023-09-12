<%@ page import="com.pizzaorder.web.user.dao.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SignUp</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        .container {

            width: 500px;
            margin: 40px auto;
            line-height: 16px;
        }

        h3 {
            text-align: center;
        }

        h3 span {
            color: teal;
        }


        #signup {
            background-color: rgb(255, 80, 90);
            color: white;
            border: 0;
            border-radius: 5px;
            padding: 10px 224px;
        }

        .bottom input {
            background-color: white;
            border: 0;
            color: teal;
            font-size: 16px;
        }


        input {
            border: 1px solid lightgray;
            border-radius: 3px;
            padding: 10px 168px;
        }
    </style>
</head>

<body>

<div class="container">
    <br/><br/>
    <h3><span>회원 가입</span> 페이지입니다.</h3>
    <hr/>
    <form action="/user/userJoin.us" method="post" name="userform">
        <h4>* 아이디
            <button id="idCheck" type="button" onclick="checkId(userform.userid.value);">중복확인</button>
        </h4>

        <input type="text" name="userid" placeholder=" 5자이상 16자 미만 입력" required></span>
        <br/><label id="isResult"></label>

        <h4>* 비밀번호</h4>
        <input type="password" maxlength="15" id="userpw" placeholder="8자 이상 기입"></span>
        <h4>* 비밀번호 확인</h4>
        <input type="password" maxlength="15" id="userpw_re"
               onkeyup="checkPw(userform.userpw.value, userform.userpw_re.value)"></span>
        <label id="pwdResult" class="error"></label>

        <h4>* 이름</h4>
        <input type="text" maxlength="5" name="username" required></span>

        <h4>* 연락처</h4>
        <input type="tel" maxlength="11" name="userphone"
               placeholder="(-없이)01012345678"></span>
        <h4>우편번호
            <button type="button" onclick="sample6_execDaumPostcode()" value="검색">검색</button>
        </h4>
        <input type="text" name="zipcode" id="sample6_postcode"></span>

        <h4>도로명주소</h4>
        <input type="text" name="addr" id="sample6_address"></span>
        <h4>상세주소</h4>
        <input type="text" name="addretc" id="sample6_extraAddress"></span>
        <h4>참고항목</h4>
        <input type="text" name="addrdetail" id="sample6_detailAddress"></span>
        <h4>
            <input type="button" value="가입완료" onclick="sendit();" id="signup"/>
        </h4>
    </form>

    <hr/>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="user.js"></script>
</div>
</body>
</html>