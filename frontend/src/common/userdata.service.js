(function () {
"use strict";

angular.module('common')
.service('UserDataService', UserDataService);


UserDataService.$inject = ['$http', 'AuthApiPath'];
function UserDataService($http, AuthApiPath) {
  var userService = this;
  userService.savedData = '';
  //service.savedData ={};

  userService.saveUserData = function (userData) {
    userService.savedData = userData;

    return $http({
      method: "POST",
      url: AuthApiPath + '/categories.json',
      params: {param1: userService.savedData}
    }).then(function (response){
      return response.data;
    });

    //think service implementation?
    /*return $http.post(AuthApiPath + '/userauths.json').params(userService.savedData).then(function (response) {
      return response.data;
    });*/
    //console.log("I am here to save Data");

    //console.log("userService.savedData", userService.savedData);
    /*if(response.data == 200){
      return true;
    }
    else {
      return false
    }*/
  };

  userService.getUserData = function () {
    // retrive saved user data
    /*return $http.get(ApiPath + '/categories.json').then(function (response) {
      return response.data;
    });*/
    //console.log("userService.savedData is", userService.savedData);
    return userService.savedData;
  };

  /*userService.getUserData = function (userData) {
    // retrive saved user data
    return $http.get(ApiPath + '/categories.json').then(function (response) {
      return response.data;
    });

  };*/

}



})();
