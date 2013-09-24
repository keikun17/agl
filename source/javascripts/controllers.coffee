### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####
# Basic
### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####


window.myAppModule = angular.module("myApp", [])

window.myAppModule.controller "TextController", ($scope) ->
  someText = {}
  someText.message = "You have started your journey."
  $scope.someText = someText
