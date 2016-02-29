/**
 * Created by Aniket
 */
var app = angular.module("app", ['angular-md5', 'ngRoute', 'angularUUID2', 'ngCookies'])

app.config(['$routeProvider',
      function ($routeProvider) {


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
                templateUrl: 'htmlPages/userPage.html',
                controller: 'loginCtrl'
            })

            .when('/managerPage', {
                title: 'managerPage',
                templateUrl: 'htmlPages/managerPage.html',
                controller: 'loginCtrl'
            })

            .when('/adminPage', {
                title: 'adminPage',
                templateUrl: 'htmlPages/adminPage.html',
                controller: 'loginCtrl'
            })

            .when('/create_account', {
                title: 'create_account',
                templateUrl: 'htmlPages/create_account.html',
                controller: 'loginCtrl'
            })


            .otherwise({
              redirectTo: '/login'
            });
      }])






