<!-- login.jsp -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>네모바지 피자</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        .container {
            width: 385px;
            line-height: 50px;
            margin: 40px auto;
        }

        h3 {
            text-align: center;
        }

        h3 span {
            color: teal;
        }

        .login {
            background-color: rgb(255, 80, 90);
            color: white;
            border-radius: 5px;
            border: 0;
            padding: 10px 172px;
        }

        #signup {
            background-color: white;
            color: teal;
            border: 0;
            font-size: 17px;
        }

        p {
            text-align: center;
        }

        i {
            color: lightgray;
        }

        #imail {
            position: absolute;
            top: 250px;
            margin: 0 355px;
        }

        #ipw {
            position: absolute;
            top: 300px;
            margin: 0 355px;
        }

        input {
            border: 1px solid lightgray;
            border-radius: 3px;
        }


    </style>
</head>

<body>

<c:if test="${sessionScope.userid != null }">
    <script>
      alert("이미 로그인 중입니다.");
      location.href = "${pageContext.request.contextPath}/base/index.jsp";
    </script>
</c:if>

<div class="container" action="${pageContext.request.contextPath}/user/UserLoginAction.us">
    <div id="imail">
        <i class="material-icons">person_outline</i>
    </div>
    <div id="ipw">
        <i class="material-icons">lock_outline</i>
    </div>
    <br/><br/>
    <h3><span>로그인</span> 페이지입니다.</h3>
    <hr/>
    <form action="${pageContext.request.contextPath}/user/UserLoginOk.us" method="post" name="userlogin">
        <input type="text" placeholder="아이디" name="userid" required style="height:30px; width: 380px"/><br/>
        <input type="password" placeholder="비밀번호" name="userpw" required style="height:30px; width: 380px"/><br/>
        <input type="submit" value="로그인" class="login"
               onclick="return logincheck(userlogin.userid.value,userlogin.userpw.value);"/>
        <button onclick="location.href='${pageContext.request.contextPath}/base/index.jsp'" class="login">HOME</button>
    </form>

    <hr/>
    <p id="loginError" style="color: red;">
            <% if (request.getAttribute("loginError") != null) { %>
            <%= request.getAttribute("loginError") %>
            <% } %>
    <p></p>

<!--     <script src="user.js"></script> -->
</div>

</body>
</html>