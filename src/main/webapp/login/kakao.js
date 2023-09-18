<<<<<<< HEAD
   Kakao.init('8a32e0d22e020c3ee93e5b71e4507c03');
=======
Kakao.init('8a32e0d22e020c3ee93e5b71e4507c03');
Kakao.isInitialized();
>>>>>>> branch 'main' of https://github.com/Let-s-Git-it/main.git

<<<<<<< HEAD
   function loginWithKakao() {
      Kakao.Auth.login({
         success: function(authObj) {
            Kakao.API.request({
               url: '/v2/user/me',
               success: function(authObj) {
                  console.log(authObj);
                  let id = "kakao_" + authObj.id;
                  sessionStorage.setItem('kakaoUserId', id); // 세션에 사용자 ID 저장
                  alert(id + "님 환영합니다.");
                  location.href = "/base/index.jsp";
               },

               fail: function(error) {
                  console.log(error);
               }
            });
         },
         fail: function(err) {
            alert(JSON.stringify(err));
         }
      });
      displayToken();
      document.getElementById('custom-login-btn').style.display = 'none';
   }
=======
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
>>>>>>> branch 'main' of https://github.com/Let-s-Git-it/main.git

<<<<<<< HEAD
   function displayToken() {
      var token = getCookie('authorize-access-token');
=======
// displayToken 함수는 토큰 관련 작업을 수행하는 것으로 보인다. 수정하지 않았습니다.

function displayToken() {
  const token = getCookie('authorize-access-token');
>>>>>>> branch 'main' of https://github.com/Let-s-Git-it/main.git

<<<<<<< HEAD
      if (token) {
         Kakao.Auth.setAccessToken(token);
         Kakao.Auth.getStatusInfo()
            .then(function(res) {
               if (res.status === 'connected') {
                  document.getElementById('token-result').innerText
                     = '로그인 성공, 토큰: ' + Kakao.Auth.getAccessToken();
               }
            })
            .catch(function(err) {
               Kakao.Auth.setAccessToken(null);
            });
      }
   }
=======
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
>>>>>>> branch 'main' of https://github.com/Let-s-Git-it/main.git

<<<<<<< HEAD
    function setCookie( name , value , expired ){
=======
function getCookie(name) {
  var parts = document.cookie.split(name + '=');
  if (parts.length === 2) { return parts[1].split(';')[0]; }
}
>>>>>>> branch 'main' of https://github.com/Let-s-Git-it/main.git

<<<<<<< HEAD
    var date = new Date();
    date.setHours(date.getHours() + expired);
    var expried_set = "expries="+date.toGMTString();
    document.cookie = name + "=" + value + "; path=/;" + expried_set + ";"

   }

   function getCookie(name){

         var nameofCookie = name + "=";
         var x = 0;
         while(x <= document.cookie.length){
               var y = ( x + nameofCookie.length);
               if(document.cookie.substring(x,y) == nameofCookie){
                     if((endofCookie = document.cookie.indexOf(";",y)) == -1)
                           endofCookie = document.cookie.length;
                     return unescape(document.cookie.substring(y,endofCookie));
               }
               x = document.cookie.indexOf(" ",x) + 1;
               if( x == 0 )
                     break;
               }

               return "";
   }

   function logoutFromKakao() {
      Kakao.Auth.logout(function () {
         // 카카오 로그아웃에 성공하면 세션 스토리지에서 아이디를 삭제합니다.
         sessionStorage.removeItem('kakaoUserId');
         alert('로그아웃되었습니다.');
         // 로그아웃 후 다시 로그인 페이지로 이동하거나 다른 작업을 수행할 수 있습니다.
      });
   }

   // 로그아웃 버튼에 이벤트 리스너 연결
   document.getElementById('kakao_logoutBtn').addEventListener('click', logoutFromKakao);
=======

function deleteCookie() {
  document.cookie = 'authorize-access-token=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}
>>>>>>> branch 'main' of https://github.com/Let-s-Git-it/main.git
