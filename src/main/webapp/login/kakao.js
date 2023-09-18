   Kakao.init('8a32e0d22e020c3ee93e5b71e4507c03');

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

   function displayToken() {
      var token = getCookie('authorize-access-token');

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

    function setCookie( name , value , expired ){

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