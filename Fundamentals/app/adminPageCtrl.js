
/**
 * Created by Aniket
 */
app.controller("adminPageCtrl", function($scope, $rootScope, $http, $location, $cookieStore){
   alert("Hello");
    $scope.user_name = $rootScope.session.user_name;
    $scope.access = $rootScope.session.access;

});