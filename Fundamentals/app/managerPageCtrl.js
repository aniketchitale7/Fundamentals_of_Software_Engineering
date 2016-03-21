
/**
 * Created by Aniket
 */
app.controller("managerPageCtrl", function($scope, $rootScope, $http, $location, $cookieStore){
    $scope.user_name = $rootScope.session.user_name;
    $scope.access = $rootScope.session.access;
});