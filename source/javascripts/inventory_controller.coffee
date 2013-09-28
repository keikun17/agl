window.InventoryController = ($scope) ->
  $scope.bag = ['CD', 'Nintendo DS', 'cellphone' ]
  $scope.pocket = []

  $scope.swap = (index, from, to) ->
   to.push from[index]
   from.splice(index, 1)


