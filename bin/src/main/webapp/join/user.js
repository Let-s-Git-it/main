function sendit () {
  let frm = document.userform;
  let idTag = frm.userid;
  let pwTag = frm.userpw;
  let pwCheckTag = frm.userpw_re;
  let nameTag = frm.username;
  let phoneTag = frm.userphone;
  let zipTag = frm.zipcode;
  let addrTag = frm.addr;
  let etcTag = frm.addretc;
  let detailTag = frm.addrdetail;

  if (idTag.value == '') {
    alert('아이디를 입력해주세요!');
    idTag.focus();
    return false;

  }

  if (idTag.value.length <= 4 || idTag.value.length >= 16) {
    alert('아이디는 5자이상 16자 미만으로 입력해주세요 !');
    idTag.focus();
    return false;
  }

  if (pwTag.value == '') {
    alert('비밀번호를 입력해주세요');
    return false;
  }

  if (nameTag.value == '') {
    alert('이름을 입력해주세요');
    return false;

  }

  if (phoneTag.value == '') {
    alert('번호를 입력해주세요');
    return false;

  }

  if (zipTag.value == '') {
    alert('주소를 입력해주세요');
  }
  frm.submit();
}

//비밀번호 중복 체크
function checkPw (userpw, userpw_re) {
  var pwdResult = document.getElementById('pwdResult');

  if (userpw !== userpw_re) {
    pwdResult.innerHTML = '비밀번호가 일치하지 않습니다..';
  } else {
    pwdResult.innerHTML = '';
  }
}

// 아이디 중복체크
function checkId (userid) {
  //alert(userid);
  if (userid == '') {
    alert('아이디를 입력해주세요');
    return false;
  } else {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', 'idcheck.jsp?userid=' + userid, true);
    xhr.send();
    xhr.onreadystatechange = function () {
      if (xhr.readyState == XMLHttpRequest.DONE && xhr.status === 200) {
        if (xhr.responseText.trim() == 'ok') {
          document.getElementById('isResult').innerHTML = '사용 가능한 아이디입니다.';
        } else {
          document.getElementById('isResult').innerHTML = '이미 사용중인 아이디입니다.';
        }
      }
    };
  }
}

function sample6_execDaumPostcode () {
  new daum.Postcode({
    oncomplete: function (data) {
      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

      // 각 주소의 노출 규칙에 따라 주소를 조합한다.
      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
      var addr = ''; // 주소 변수
      var extraAddr = ''; // 참고항목 변수

      //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
      if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
        addr = data.roadAddress;
      } else { // 사용자가 지번 주소를 선택했을 경우(J)
        addr = data.jibunAddress;
      }

      // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
      if (data.userSelectedType === 'R') {
        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
          extraAddr += data.bname;
        }
        // 건물명이 있고, 공동주택일 경우 추가한다.
        if (data.buildingName !== '' && data.apartment === 'Y') {
          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
        }
        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
        if (extraAddr !== '') {
          extraAddr = ' (' + extraAddr + ')';
        }
        // 조합된 참고항목을 해당 필드에 넣는다.
        document.getElementById('sample6_extraAddress').value = extraAddr;

      } else {
        document.getElementById('sample6_extraAddress').value = '';
      }

      // 우편번호와 주소 정보를 해당 필드에 넣는다.
      document.getElementById('sample6_postcode').value = data.zonecode;
      document.getElementById('sample6_address').value = addr;
      // 커서를 상세주소 필드로 이동한다.
      document.getElementById('sample6_detailAddress').focus();
    }
  }).open();
}