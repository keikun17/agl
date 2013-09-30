shoppingModule = angular.module 'ShoppingModule', []

shoppingModule.factory "Items", ->
  items = {}

  items.query = ->
    console.log "called"
    [
      {title: 'Atlas', description: 'Assault Mech', price: '10'},
      {title: 'Cataphract', description: 'Heavy Mech', price: '5'},
      {title: 'Hunchback', description: 'Medium Mech', price: '4'}
    ]

  items

window.ShoppingController = ($scope, Items) ->
  $scope.items = Items.query()


