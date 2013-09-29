window.DeathrayController = ($scope) ->
  $scope.toggleMenu = ->
    $scope.menuState.show = !$scope.menuState.show

  $scope.isDisabled = false

  $scope.stun = ->
    $scope.isDisabled = 'true'
