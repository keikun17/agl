window.InventoryController = ($scope) ->
  $scope.bag = [
    'CD',
    'Nintendo DS',
    'cellphone' ]
  $scope.pocket = ['watch', 'condom']

  $scope.bag_selection = []
  $scope.pocket_selection = []

  $scope.swap = () ->
    pocket_selection = $scope.pocket_selection
    bag_selection = $scope.bag_selection

    $scope.bag = _.difference($scope.bag, bag_selection)
    $scope.bag = $scope.bag.concat(pocket_selection)

    $scope.pocket = _.difference($scope.pocket, pocket_selection)
    $scope.pocket = $scope.pocket.concat(bag_selection)


