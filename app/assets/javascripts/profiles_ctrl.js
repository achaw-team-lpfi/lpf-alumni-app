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

    //check user status to determine what field are searchable

    $scope.viewable = function viewable(){
      if (current_user === "admin"){
        return false;
      }
      else{
         return true;
      }
    }

    // link to show page for row

    $scope.show = function(id){
      window.location.href = "/profiles/" + id ;
    }


    // search function to display only id matches search term (additional add-on if time permit // change from filter to search by dropdown)
    $scope.search = function(){

    } 

  }]);
})();