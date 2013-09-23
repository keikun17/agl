#### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####
# Basic
#### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####

window.HelloController = ($scope, $location) ->
  $scope.greeting = { text: 'ellow' }
  console.log $location


window.CartController = ($scope) ->
  $scope.items = [
    {title: 'Highlander', quantity: 1, price: 40.0},
    {title: 'Atlas', quantity: 3, price: 55.0},
    {title: 'Jenner', quantity: 4, price: 15.0}
  ]

  $scope.remove = (index) ->
    $scope.items.splice index, 1

#### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####
# Modular approach p.26
#### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####

window.myAppModule = angular.module("myApp", [])
window.myAppModule.controller "TextController", ($scope) ->
  someText = {}
  someText.message = "You have started your journey."
  $scope.someText = someText
