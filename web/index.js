/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var app = angular.module("app", []);
app.controller("IndexController", IndexController);
function IndexController($scope,$http,$log) {
    $scope.mensaje = "hola mundo";

   
    
  $http({
    method: 'GET', 
    url: 'findall.json.jsp'
  }).success(function(data, status, headers, config) {
      $scope.entidadesBancarias=data;
  }).error(function(data, status, headers, config) {
      alert("Ha fallado la petición. Estado HTTP:"+status);
  });
    
 
}
