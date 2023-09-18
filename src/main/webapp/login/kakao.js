Kakao.init('8a32e0d22e020c3ee93e5b71e4507c03');
Kakao.isInitialized();

function loginWithKakao() {
  Kakao.Auth.login({
    success: function(authObj) {
      Kakao.API.request({
        url: '/v2/user/me',
        success: function(userInfo) {
          console.log(userInfo);
          let id = "kakao_" + userInfo.id;
          let name = userInfo.properties.nickname; // 사용자 이름 가져오기
          sessionStorage.setItem('kakaoUserId', id); // 세션에 사용자 ID 저장
          sessionStorage.setItem('kakaoUserName', name);
          location.href = "/base/index.jsp?kakaoUserId=" + id;
        },
        fail: function(error) {
          console.log("유저 정보를 불러오는 데 오류가 발생했습니다.: ", error);
        }
      });
    }
  });
  displayToken();
}

// displayToken 함수는 토큰 관련 작업을 수행하는 것으로 보인다. 수정하지 않았습니다.

function displayToken() {
  const token = getCookie('authorize-access-token');

  if (token) {
    Kakao.Auth.setAccessToken(token);
    Kakao.Auth.getStatusInfo()
      .then(function(res) {
        if (res.status === 'connected') {
          console.log("Logged in with token: " + Kakao.Auth.getAccessToken());
        }
      })
      .catch(function(err) {
        console.error("Error checking login status: ", err);
        Kakao.Auth.setAccessToken(null);
      });
  }
}

function getCookie(name) {
  var parts = document.cookie.split(name + '=');
  if (parts.length === 2) { return parts[1].split(';')[0]; }
}


function deleteCookie() {
  document.cookie = 'authorize-access-token=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}