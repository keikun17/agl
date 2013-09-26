### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####
# Basic
### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ####

window.RestaurantTableController = ($scope) ->
  $scope.directory = [
    {name: 'Rest1', cuisine: 'food1'},
    {name: 'Rest2', cuisine: 'food2'},
    {name: 'Rest3', cuisine: 'food3'}
  ]

  $scope.selectRestaurant = (row) ->
    $scope.selectedRow = row


