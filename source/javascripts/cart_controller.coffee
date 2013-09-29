window.CartController = ($scope) ->
  $scope.bill = {}

  $scope.items = [
    {title: "Paint pots", quantity: 8, price: 3.95},
    {title: "Polka dots", quantity: 17, price: 12.95},
    {title: "Paint pots", quantity: 5, price: 6.95}
  ]


  calculateTotals = ->

    i = 0
    total = 0
    len = $scope.items.length

    while i < len
      total = total + $scope.items[i].price * $scope.items[i].quantity
      i++

    $scope.bill.total  = total
    $scope.bill.discount = if total > 100 then 10 else 0
    $scope.bill.subtotal = total - $scope.bill.discount

  $scope.$watch('items',  calculateTotals, true)
