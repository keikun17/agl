### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####
# Basic
### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####

window.StartUpController = ($scope) ->
  $scope.funding = { startingEstimate: 0 }

  $scope.computeNeeded = ->
    $scope.funding.needed = $scope.funding.startingEstimate * 10

  $scope.requestFunding = ->
    window.alert(" Sorry please get more customers first.")


