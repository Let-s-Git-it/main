//메인 메뉴 가격 반영
function updatePrice (menuId, size) {
  var priceElement = document.getElementById(menuId + '_price_' + size);
  var price = priceElement.innerText;

  // 해당 메뉴 사이즈 선택
  var sizeElement = document.querySelector('input[name="' + menuId + '"]:checked');
  var selectedSize = sizeElement ? sizeElement.getAttribute('data-size') : null;

  // 사이즈 선택 여부 판단 이후 업데이트 실행 여부 판단
  if (selectedSize === null) {
    alert('사이즈를 선택해 주세요.');
  } else {
    document.getElementById(menuId + '_price').innerText = price;
  }

  // 주문 확인 창 업데이트
  updateOrderConfirmation();
}

function updateMenuItemQuantity (menuId, operation) {
  var quantityElement = document.getElementById(menuId + '_quantity');
  var currentQuantity = parseInt(quantityElement.textContent);

  if (operation === 'increase') {
    quantityElement.textContent = currentQuantity + 1;
  } else if (operation === 'decrease' && currentQuantity > 0) {
    quantityElement.textContent = currentQuantity - 1;
  }

  updateOrderConfirmation();
}

function updateOrderConfirmation () {
  var total = 0;
  resetOrderConfirmation();

  updateMenuCategory('main_menu', 6);
  updateMenuCategory('side_menu', 5);
  updateMenuCategory('drink_menu', 6);

  function updateMenuCategory (category, itemCount) {
    for (var i = 1; i <= itemCount; i++) {
      var menuId = category + i;
      var quantityElement = document.getElementById(menuId + '_quantity');
      var quantity = parseInt(quantityElement.innerText);

      if (quantity > 0) {
        var menuName = document.getElementById(menuId + '_name').innerText;
        var menuPrice = document.getElementById(menuId + '_price').innerText;
        menuPrice = menuPrice.replace(',', '');
        menuPrice = parseInt(menuPrice);
        var totalPrice = quantity * menuPrice;

        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + ' x ' + quantity + ' 가격: ￦' + totalPrice;

        var categoryConfirmationDiv = document.getElementById(category + '_confirmation');
        categoryConfirmationDiv.appendChild(confirmationDiv);

        total += totalPrice;
      }
    }
  }

  updateTotalPrice(total);
}

function resetOrderConfirmation () {
  var menuCategories = ['main_menu', 'side_menu', 'drink_menu'];

  menuCategories.forEach(function (category) {
    var categoryConfirmationDiv = document.getElementById(category + '_confirmation');
    if (categoryConfirmationDiv) {
      categoryConfirmationDiv.innerHTML = '';
    }
  });

  updateTotalPrice(0);
}

function updateTotalPrice (total) {
  var totalPriceElement = document.getElementById('total_price');
  totalPriceElement.innerText = '￦' + total.toLocaleString();
}

function openModal (id) {
  var zIndex = 9999;
  var modal = document.getElementById(id);
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

  updateOrderConfirmation();

  modal.querySelector('.modal_close_btn').addEventListener('click', function () {
    bg.remove();
    modal.style.display = 'none';
  });

  modal.setStyle({
    position: 'fixed',
    display: 'block',
    boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',
    zIndex: zIndex + 1,
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
    msTransform: 'translate(-50%, -50%)',
    webkitTransform: 'translate(-50%, -50%)',
    backgroundColor: '#ffffff'
  });
}

// 원격 서버로 주문 정보를 전송하는 함수
function sendOrderToServer (orderData) {
  var xhr = new XMLHttpRequest();
  xhr.open('POST', '/order', true);
  xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8');

  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4) {
      if (xhr.status === 200) {
        // 주문 성공 시 알림 표시
        alert('주문이 완료되었습니다.');

        // 주문 내용 초기화
        resetOrderConfirmation();

        // 모달 닫기
        closeModal();
      } else {
        // 주문 실패 시 에러 처리 (선택 사항)
        alert('주문을 처리하는 중에 오류가 발생했습니다.');
      }
    }
  };

  // 주문 정보 전송
  xhr.send(JSON.stringify(orderData));
}

Element.prototype.setStyle = function (styles) {
  for (var style in styles) {
    this.style[style] = styles[style];
  }
  return this;
};

window.addEventListener('load', updateOrderConfirmation);

document.getElementById('popup_open_btn').addEventListener('click', function () {
  openModal('my_modal');
});

// 모달 창 닫기
function closeModal () {
  var modal = document.getElementById('my_modal');
  modal.style.display = 'none';
}