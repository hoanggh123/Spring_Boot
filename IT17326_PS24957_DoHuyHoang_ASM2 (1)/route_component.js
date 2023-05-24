var indexCart = 0;
var app = angular.module("myApp", [
  "ngRoute",
  "angularUtils.directives.dirPagination",
]);
app.controller("ShopCtrl", function ($scope, $rootScope, $routeParams, $http) {
  /*Home_Component*/
  let items = document.querySelectorAll(".carousel .carousel-items");
  items.forEach((el) => {
    const minPerSlide = 4;
    let next = el.nextElementSibling;
    for (var i = 1; i < minPerSlide; i++) {
      if (!next) {
        // wrap carousel by using first child
        next = items[0];
      }
      let cloneChild = next.cloneNode(true);
      el.appendChild(cloneChild.children[0]);
      next = next.nextElementSibling;
    }
  });
  $http({
    method: "GET",
    url: "cartegory.json",
  }).then(
    function (response) {
      $scope.Data = response.data;
      console.log(response);
    },
    function (error) {}
  );
  /*Category_Component*/
  $http({
    method: "GET",
    url: "cartegory.json",
  }).then(
    function (response) {
      $scope.products = response.data;
      console.log(response);
    },
    function (error) {}
  );
  /*Chi tiết sản phẩm */
  $scope.index = $routeParams.url;
  /*Thêm sản phẩm */
  $scope.products = [];
  $scope.addCart = function (p) {
    if (typeof $rootScope.cart == "undefined") {
      $rootScope.cart = [];
    }
    $scope.countCart = 0;
    $scope.countCart = $rootScope.cart.length;
    if ($rootScope.cart.filter((i) => i.id == p.id).length == 0) {
      $rootScope.cart.push(p);
      $rootScope.cart[$scope.countCart].quantity = 1;
    } else if ($rootScope.cart.filter((i) => i.id == p.id).length == 1) {
      alert("Sản phẩm này đã có trong giỏ hàng");
    }
  };
  $rootScope.sumMoney = 0;
  if (typeof $rootScope.cart != "undefined") {
    for (var i = 0; i < $rootScope.cart.length; i++) {
      $rootScope.sumMoney =
        $rootScope.sumMoney +
        $rootScope.cart[i].quantity * $rootScope.cart[i].Price;
    }
  }
  $scope.addClick = function (index) {
    $rootScope.cart[index].quantity = $rootScope.cart[index].quantity + 1;
    if (typeof $rootScope.cart != "undefined") {
      $rootScope.sumMoney = 0;
      for (var i = 0; i < $rootScope.cart.length; i++) {
        $rootScope.sumMoney =
          $rootScope.sumMoney +
          $rootScope.cart[i].quantity * $rootScope.cart[i].Price;
      }
    }
  };
  $scope.subClick = function (index) {
    if ($rootScope.cart[index].quantity > 1) {
      $rootScope.cart[index].quantity = $rootScope.cart[index].quantity - 1;
    }
    if (typeof $rootScope.cart != "undefined") {
      $rootScope.sumMoney = 0;
      for (var i = 0; i < $rootScope.cart.length; i++) {
        $rootScope.sumMoney =
          $rootScope.sumMoney +
          $rootScope.cart[i].quantity * $rootScope.cart[i].Price;
      }
    }
  };
  $scope.delProduct = function (index) {
    confirm("Bạn muốn chắc muốn xóa sản phẩm");
    $rootScope.cart.splice(index, 1);
    if (typeof $rootScope.cart != "undefined") {
      $rootScope.sumMoney = 0;
      for (var i = 0; i < $rootScope.cart.length; i++) {
        $rootScope.sumMoney =
          $rootScope.sumMoney +
          $rootScope.cart[i].quantity * $rootScope.cart[i].Price;
      }
    }
  };
  /*Search and Filter */
  $scope.keyword = "";
  $scope.filtering = false;
  $scope.filteredProducts = [];
  /*Lọc sản phẩm từ 0 đến 1tr */
  $scope.filterProducts = function () {
    $scope.filtering = !$scope.filtering;
    if ($scope.filtering) {
      $scope.filteredProducts = $scope.products.filter(function (product) {
        return product.Price >= 0 && product.Price <= 1000000;
      });
    }
    $scope.totalItems = $scope.filtering
      ? $scope.filteredProducts.length
      : $scope.products.length;
    $scope.currentPage = 1;
  };
  $scope.filterProducts2 = function () {
    $scope.filtering = !$scope.filtering;
    if ($scope.filtering) {
      $scope.filteredProducts = $scope.products.filter(function (product) {
        return product.Price >=1000000;
      });
    }
    $scope.totalItems = $scope.filtering
      ? $scope.filteredProducts.length
      : $scope.products.length;
    $scope.currentPage = 1;
  };
  /*Đăng kí */
  /*Khởi tạo các biến */
});
app.config(function ($routeProvider, paginationTemplateProvider) {
  paginationTemplateProvider.setPath("custom.html");
  $routeProvider
    .otherwise({
      templateUrl: "home_component.html",
      controller: "ShopCtrl",
    })
    .when("/category", {
      templateUrl: "category_component.html",
      controller: "ShopCtrl",
    })
    .when("/header", {
      templateUrl: "header_component.html",
      controller: "ShopCtrl",
    })
    .when("/cart", {
      templateUrl: "shopping_component.html?",
      controller: "ShopCtrl",
    })
    .when("/forgot", {
      templateUrl: "forgot_component.html?",
      controller: "ShopCtrl",
    })
    .when("/login", {
      templateUrl: "signIn_component.html?",
      controller: "ShopCtrl",
    })
    .when("/register", {
      templateUrl: "register_component.html?",
      controller: "ShopCtrl",
    })
    .when("/detail/:url", {
      templateUrl: "details_component.html?",
      controller: "ShopCtrl",
    });
});
