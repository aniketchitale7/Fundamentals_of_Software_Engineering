/**
 * Created by Aniket
 */
var app = angular.module("app", ['angular-md5', 'ngRoute', 'angularUUID2', 'ngCookies'])

app.config(['$routeProvider','$sceProvider',
    function ($routeProvider, $sceProvider) {

          $sceProvider.enabled(false);
        $routeProvider.
            when('/login', {
              title: 'Login',
              templateUrl: 'htmlPages/login.html',
              controller: 'loginCtrl'
            })

            .when('/', {
              title: 'Login',
              templateUrl: 'htmlPages/login.html',
              controller: 'loginCtrl'
            })

            .when('/userPage', {
                title: 'userPage',
                templateUrl: 'htmlPages/userPage1.html',
                controller: 'userPageCtrl'
            })

            .when('/managerPage', {
                title: 'managerPage',
                templateUrl: 'htmlPages/managerPage.html',
                controller: 'managerPageCtrl'
            })

            .when('/adminPage', {
                title: 'adminPage',
                templateUrl: 'htmlPages/adminPage.html',
                controller: 'adminPageCtrl'
            })

            .when('/create_account', {
                title: 'create_account',
                templateUrl: 'htmlPages/create_account.html',
                controller: 'loginCtrl'
            })
            .when('/cart', {
                title: 'cart',
                templateUrl: 'htmlPages/cart.html',
                controller: 'userPageCtrl'
            })


            .otherwise({
              redirectTo: '/login'
            });
      }])






