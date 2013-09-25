### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####
# Basic
### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####

window.HeaderController = ($scope) ->
  $scope.isError = false
  $scope.isWarning = false

  $scope.showError = ->
    $scope.messageText = "This is an Error!"
    $scope.isError = true
    $scope.isWarning = false

  $scope.showWarning = ->
    $scope.messageText = "This is an Warning!"
    $scope.isError = false
    $scope.isWarning = true
