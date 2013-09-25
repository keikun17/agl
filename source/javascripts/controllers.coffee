### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####
# Basic
### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####

window.DeathrayMenuController = ($scope) ->
  $scope.menuState =
    show: false

  $scope.isDisabled = false

  $scope.toggleMenu = ->
    console.log($scope)
    $scope.menuState.show = !$scope.menuState.show;

  $scope.stun = () ->
    $scope.isDisabled = true
