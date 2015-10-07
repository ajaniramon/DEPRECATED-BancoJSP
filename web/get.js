/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var app = angular.module("app", []);
app.controller("GetController",GetController);
function GetController($scope,$http){
    
   function getParameterByName( name ){
    var regexS = "[\\?&]"+name+"=([^&#]*)", 
  regex = new RegExp( regexS ),
  results = regex.exec( window.location.search );
  if( results == null ){
    return "";
  } else{
    return decodeURIComponent(results[1].replace(/\+/g, " "));
  }
}

 //var parametro = getParameterByName("idEntidadBancaria");  
 
  $http({
    method: 'GET', 
    url: 'get.json.jsp',
    params: {idEntidadBancaria: getParameterByName("idEntidadBancaria")}
    
  }).success(function(data, status, headers, config) {
      $scope.entidadBancaria=data;
  }).error(function(data, status, headers, config) {
      alert("Ha fallado la petición. Estado HTTP:"+status);
  });
    
}