  //메인 메뉴 가격 반영
  function updatePrice (menuId, size) {
    // 해당 메뉴 아이템의 가격을 가져옵니다.
    var priceElement = document.getElementById(menuId + "_price_" + size);
    var price = priceElement.innerText;

    // 해당 메뉴 사이즈 선택
    var sizeElement = document.querySelector('input[name="' + menuId + '"]:checked');
    var selectedSize = sizeElement ? sizeElement.getAttribute('data-size') : null;

    // 사이즈 선택 여부 판단 이후 업데이트 실행 여부 판단
    if (selectedSize === null) {
      alert("사이즈를 선택해 주세요.");
    } else {
      // 선택된 사이즈가 있을 때 주문 처리 코드를 작성합니다.
      // 가격을 main_menu1_price에 업데이트합니다.
      document.getElementById(menuId + "_price").innerText = price;
    }

    // 주문 확인 창을 업데이트합니다.
    updateOrderConfirmation();
  }

  // 증가 함수
  function increaseQuantity (menuId) {
    var quantityElement = document.getElementById(menuId + "_quantity");
    var currentQuantity = parseInt(quantityElement.innerText);
    quantityElement.innerText = currentQuantity + 1;

    updateOrderConfirmation();
  }

  // 감소 함수
  function decreaseQuantity (menuId) {
    var quantityElement = document.getElementById(menuId + "_quantity");
    var currentQuantity = parseInt(quantityElement.innerText);

    if (currentQuantity > 0) {
      quantityElement.innerText = currentQuantity - 1;

      updateOrderConfirmation();
    }
  }

  // 주문 확인 창 업데이트 함수
  function updateOrderConfirmation () {
    var total = 0;

    // 주문 확인 창을 초기화합니다.
    var mainMenuConfirmationDiv = document.getElementById('main_menu_confirmation');
    mainMenuConfirmationDiv.innerHTML = '';

    var sideMenuConfirmationDiv = document.getElementById('side_menu_confirmation');
    sideMenuConfirmationDiv.innerHTML = '';

    var drinkMenuConfirmationDiv = document.getElementById('drink_menu_confirmation');
    drinkMenuConfirmationDiv.innerHTML = '';

    // 메인 메뉴 업데이트
    var mainMenuIds = ['main_menu1', 'main_menu2', 'main_menu3', 'main_menu4', 'main_menu5', 'main_menu6'];
    for (var i = 0; i < mainMenuIds.length; i++) {
      var menuId = mainMenuIds[i];
      var quantityElement = document.getElementById(menuId + "_quantity");
      var quantity = parseInt(quantityElement.innerText);

      // 수량이 0이 아닌 경우에만 주문 확인 창에 출력
      if (quantity > 0) {
        var menuName = document.getElementById(menuId + "_name").innerText;
        var menuPrice = document.getElementById(menuId + "_price").innerText;
        menuPrice = menuPrice.replace(",", "");
        menuPrice = parseInt(menuPrice);
        var totalPrice = quantity * menuPrice;

        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + " x " + quantity + " 가격: ￦" + totalPrice;

        // 업데이트한 내용을 주문 확인 창에 추가
        mainMenuConfirmationDiv.appendChild(confirmationDiv);

        // 총 가격 업데이트
        total += totalPrice;
      }
    }

    // 사이드 메뉴 업데이트 (사이드 메뉴 아이디들을 추가하십시오)
    var sideMenuIds = ['side_menu1', 'side_menu2', 'side_menu3', 'side_menu4', 'side_menu5'];
    for (var i = 0; i < sideMenuIds.length; i++) {
      var menuId = sideMenuIds[i];
      var quantityElement = document.getElementById(menuId + "_quantity");
      var quantity = parseInt(quantityElement.innerText);
      // 수량이 0이 아닌 경우에만 주문 확인 창에 출력
      if (quantity > 0) {
        var menuName = document.getElementById(menuId + "_name").innerText;
        var menuPrice = document.getElementById(menuId + "_price").innerText;
        menuPrice = menuPrice.replace(",", "");
        menuPrice = parseInt(menuPrice);
        var totalPrice = quantity * menuPrice;
        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + " x " + quantity + " 가격: ￦" + totalPrice;
        // 업데이트한 내용을 주문 확인 창에 추가
        sideMenuConfirmationDiv.appendChild(confirmationDiv);

        // 총 가격 업데이트
        total += totalPrice;
      }
    }

    // 음료 메뉴 업데이트 (음료 메뉴 아이디들을 추가하십시오)
    var drinkMenuIds = ['drink_menu1', 'drink_menu2', 'drink_menu3', 'drink_menu4', 'drink_menu5', 'drink_menu6'];
    for (var i = 0; i < drinkMenuIds.length; i++) {
      var menuId = drinkMenuIds[i];
      var quantityElement = document.getElementById(menuId + "_quantity");
      var quantity = parseInt(quantityElement.innerText);

      // 수량이 0이 아닌 경우에만 주문 확인 창에 출력
      if (quantity > 0) {
        var menuName = document.getElementById(menuId + "_name").innerText;
        var menuPrice = document.getElementById(menuId + "_price").innerText;
        menuPrice = menuPrice.replace(",", "");
        menuPrice = parseInt(menuPrice);
        var totalPrice = quantity * menuPrice;
        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + " x " + quantity + " 가격: ￦" + totalPrice;

        // 업데이트한 내용을 주문 확인 창에 추가
        drinkMenuConfirmationDiv.appendChild(confirmationDiv);
        // 총 가격 업데이트
        total += totalPrice;
      }
    }

    // 총 가격 업데이트
    var totalPriceElement = document.getElementById("total_price");
    totalPriceElement.innerText = total;
  }

  // 페이지 로드 시 주문 확인 창을 업데이트합니다.
    window.addEventListener('load', updateOrderConfirmation);

  function modal (id) {
    var zIndex = 9999;
    var modal = document.getElementById(id);

    // 뒤 창 style
    var bg = document.createElement('div');
    bg.setStyle({
      position: 'fixed',
      zIndex: zIndex,
      left: '0px',
      top: '0px',
      width: '100%',
      height: '100%',
      overflow: 'auto',
      backgroundColor: 'rgba(0,0,0,0.4)'
    });
    document.body.append(bg);


	// 주문처리
    modal.querySelector('.modal_order_btn').addEventListener('click', function () {
      bg.remove();
      alert("주문이 되었습니다.");
      modal.style.display = 'none';
    });
    
    // 닫기 버튼 처리
    modal.querySelector('.modal_close_btn').addEventListener('click', function () {
      bg.remove();
      modal.style.display = 'none';
    });

    modal.setStyle({
      position: 'fixed',
      display: 'block',
      boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

      // modal창 앞으로 보내기
      zIndex: zIndex + 1,

      // div center 정렬
      top: '50%',
      left: '50%',
      transform: 'translate(-50%, -50%)',
      msTransform: 'translate(-50%, -50%)',
      webkitTransform: 'translate(-50%, -50%)',
      backgroundColor: '#ffffff'
    });
  }

  // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
  Element.prototype.setStyle = function (styles) {
    for (var k in styles) this.style[k] = styles[k];
    return this;
  };

  document.getElementById('popup_open_btn').addEventListener('click', function () {
    // 모달창 띄우기
    modal('my_modal');
  });
