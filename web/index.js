/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var app = angular.module("app", []);
app.controller("IndexController", IndexController);
function IndexController($scope) {
    $scope.mensaje = "hola mundo";
    $scope.entidadesBancarias =
            [{"idEntidadBancaria": 4, "nombre": "Bonkia", "codigoEntidad": 11, "fechaCreacion": "2015-02-01", "direccion": "Calle falsa 123", "cif": "32894u38493A"}, {"idEntidadBancaria": 9, "nombre": "Banco", "codigoEntidad": 1243, "fechaCreacion": "2015-06-06", "direccion": "Calle mslata", "cif": "cif56"}];
    $scope.mensaje2 = "La policía tortura y asesina.";
    
}
app.controller("IndexController", IndexController);