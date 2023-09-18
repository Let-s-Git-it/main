<!-- login.jsp -->
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
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
    <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png">
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
<title>네이버로그인</title>
		<%
		String clientId = "pAHkT6H3O_d4GE5RRMnJ";//애플리케이션 클라이언트 아이디값";
		String redirectURI = URLEncoder.encode("http://www.naver.com", "UTF-8");
		SecureRandom random = new SecureRandom();
		String state = new BigInteger(130, random).toString();
		String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code" + "&client_id=" + clientId
				+ "&redirect_uri=" + redirectURI + "&state=" + state;
		session.setAttribute("state", state);
		%>

		<!-- kakao id  -->
		<a href="<%=apiURL%>"><img height="50"
			src="http://static.nid.naver.com/oauth/small_g_in.PNG" /></a> <a
			id="custom-login-btn" onClick="loginWithKakao()"> <img
			src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
			width="242" /></a>

		<p id="token-result"></p>


		<p id="welcomemsg" style="color: red;">
			<%
			if (request.getAttribute("welcomemsg") != null) {
			%>
			<%=request.getAttribute("welcomemsg")%>
			<%
			}
			%>

			<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.4.0/kakao.min.js"
				integrity="sha384-mXVrIX2T/Kszp6Z0aEWaA8Nm7J6/ZeWXbL8UpGRjKwWe56Srd/iyNmWMBhcItAjH"
				crossorigin="anonymous"></script>
			<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
			<script src="kakao.js"></script>

	</div>


</body>
</html>