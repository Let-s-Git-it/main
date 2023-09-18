function checkSessionAndToggleLoginButton () {

  var sessionUserId = '<%= session.getAttribute("userid") %>';

  var loginButton = document.getElementById('loginButton');

  if (sessionUserId) {
    loginButton.style.display = 'none';
  } else {
    loginButton.style.display = 'block';
  }
}

window.onload = checkSessionAndToggleLoginButton;