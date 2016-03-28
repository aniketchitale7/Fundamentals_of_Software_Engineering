
/**
 * Created by Aniket
 */
app.controller("userPageCtrl1", function($scope, $rootScope, $http, $location, $cookieStore , ngCart){

    $scope.users = []; //declare an empty array
    $scope.input = [];
    $scope.user_name = $rootScope.session.user_name;
    $scope.name= $scope.user_name.substr(0, $scope.user_name.indexOf('@'));
    var catArray = {};

    $scope.access = $rootScope.session.access;
    $http.get("serverCode/getProducts.php").success(function(response){
        $scope.users = response;  //ajax request to fetch data into $scope.data
    });
    ngCart.setTaxRate(7.5);
    ngCart.setShipping(2.99);
    console.log ("Value of Ng Cart is " + ngCart);

    $scope.myVariable = "My Variable value";

    $scope.checkout = function() {
        $scope.summary = ngCart.toObject();
        console.log("Value of total " + $scope.summary.totalCost)
        if($scope.summary.totalCost == $scope.input.confirmPrice)
        {
            $scope.orderPlace = "OrderPlaced"
        }
        else {
            $scope.orderPlace = "Incorrect Value Entered"

        }
       // Post your cart to your resource
        //$http.post('cart/', ngCart.toObject());
    }
    $scope.redirectToCart = function(){
        $location.path('/orderPage');
    }



    $scope.sort = function(keyname){
        $scope.sortKey = keyname;   //set the sortKey to the param passed
        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
    }







});
