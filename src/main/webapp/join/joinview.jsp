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

        h5 {
            text-align: center;
        }

        h5 span {
            color: teal;
        }

        .n {
            font-size: 13px;
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

        i {
            color: lightgray;
        }


        #iperson1 {
            position: absolute;
            top: 160px;
            margin: 0 275px;
        }

        #ipw {
            position: absolute;
            top: 210px;
            margin: 0 275px;
        }


        #ipw2 {
            position: absolute;
            top: 260px;
            margin: 0 275px;
        }

        #iperson2 {
            position: absolute;
            top: 310px;
            margin: 0 275px;
        }

        input {
            border: 1px solid lightgray;
            border-radius: 3px;
        }
    </style>
</head>

<body>
<div class="container">

    <div id="iperson1">
        <i class="material-icons">person_outline</i>
    </div>
    <div id="ipw">
        <i class="material-icons">lock_outline</i>
    </div>
    <div id="ipw2">
        <i class="material-icons">lock_outline</i>
    </div>
    <div id="iperson2">
        <i class="material-icons">person_outline</i>
    </div>

    <br/><br/>
    <h5><span>회원 가입</span> 페이지입니다.</h5>
    <hr/>
    <br/>

    <form action="/user/userJoin.us" method="post" name="userform">
        <input type="text" placeholder="아이디" name="userid" autocomplete="userid" required
               style="height:30px; width: 300px"/>
        <input type="button" onclick="checkId(userform.userid.value);" value="중복확인"> <br/><br/>
        <input type="password" placeholder="비밀번호" name="userpw" required style="height:30px; width: 300px"/><br/><br/>
        <input type="password" placeholder="비밀번호 확인" name="userpw_re" required
               style="height:30px; width: 300px"/><br/><br/>
        <input type="text" placeholder="이름" name="username" required style="height:30px; width: 300px"/><br/><br/>
        <input type="text" placeholder="전화번호" name="userphone" required style="height:30px; width: 300px"/><br/><br/>
        <P>
            우편번호
            <input type="text" id="sample6_postcode" placeholder="우편번호" name="zipcode">
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
        </P>
        <P>
            주소
            <input type="text" id="sample6_address" placeholder="주소" name="addr"><br>
        </P>
        <P>
            참고항목
            <input type="text" id="sample6_extraAddress" placeholder="참고항목" name="addretc">
        </P>
        <P>
            상세주소
            <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addrdetail">
        </P>
        <P>
            <input type="button" value="가입완료" onclick="sendit();" id="signup"/><br/><br/>
        </P>
    </form>

    <hr/>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="user.js"></script>
</div>
</body>
</html>