window.CartController = ($scope) ->
  $scope.bill = {}

  $scope.items = [
    {title: "Paint pots", quantity: 8, price: 3.95},
    {title: "Polka dots", quantity: 17, price: 12.95},
    {title: "Paint pots", quantity: 5, price: 6.95}
  ]


  $scope.totalCart = ->
    i = 0
    len = $scope.items.length

    while i < len
      total = total + $scope.items[i].price * $scope.items[i].quantity
      i++

    total

  $scope.subtotal = ->
    $scope.totalCart() - $scope.bill.discount

  window.calculateDiscount = (newValue, oldValue, scope) ->
    $scope.bill.discount = newValue > 100 ? 10 : 0

  $scope.$watch($scope.totalCart, calculateDiscount)
