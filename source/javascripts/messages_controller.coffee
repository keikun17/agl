aMailServices = angular.module('AMail', [])

emailRouteConfig = ($routeProvider) ->
  $routeProvider.
    when '/', {
      controller: ListController,
      templateUrl: 'list.html'
    }.
    when '/view/:id',{
      controller: DetailController,;
      templateUrl: 'detail.html'
    }.
    otherwise { redirectTo: '/' }

