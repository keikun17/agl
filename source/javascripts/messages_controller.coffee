aMailServices = angular.module('AMail', [])

emailRouteConfig = ($routeProvider) ->
  $routeProvider.
    when '/', {
      controller: ListController,
      templateUrl: 'list.html'
    }

