
/**
 * Created by Aniket
 */
app.controller("userPageCtrl", function($scope, $rootScope, $http, $location, $cookieStore){
    $scope.user_name = $rootScope.session.user_name;
    $scope.name= $scope.user_name.substr(0, $scope.user_name.indexOf('@'));

    $scope.access = $rootScope.session.access;

    $scope.redirectToCart = function(){
        $location.path('/cart');
    }

});