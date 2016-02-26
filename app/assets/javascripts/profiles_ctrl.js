(function() {
  "use strict";

  angular.module("app").controller("profilesCtrl", ["$scope", "$http", function($scope,$http){
    
    $scope.message = "Angular Controller Added!";

      // pull data from profile.json 

    $http.get("/api/v1/profiles.json")
      .success(function(data, status, headers, config){
        $scope.profiles = data;
      })
      .error(function(data,status,headers,config){
        console.log(status);
    });
    
    $scope.searchTerm = ''; // ng-model for search term

    //check for global var searchTerm from other pages if someone use search from nav bar it will pass params into angular filter

    if(searchTerm != 0){
      $scope.searchTerm = searchTerm;
    }

    // search function to display only id matches search term (additional add-on if time permit // change from filter to search by dropdown)
    $scope.search = function(){

    } 

  }]);
})();