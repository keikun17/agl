aMailServices = angular.module('AMail', [])

emailRouteConfig = ($routeProvider) ->
  $routeProvider
    .when( '/', {
      controller: ListController,
      templateUrl: '/messages/list.html'
    }).when('/view/:id' ,{
      controller: DetailController,;
      templateUrl: '/messages/detail.html'
    }).otherwise({ redirectTo: '/' })

aMailServices.config(emailRouteConfig)

messages = [
  {id: 0, sender: 'guy@company.com', subject: "PPC Nerf", message: "Why do they keep nerfing the PPCs?" },
  {id: 1, sender: 'you@company.com', subject: "AC5", message: "I think the UAC5 is overrated and you can make do with AC5s" },
  {id: 2, sender: 'me@company.com', subject: "Hey", message: "Hello" }
]

ListController = ($scope) ->
  $scope.messages = messages

DetailController = ($scope, $routeParams) ->
  console.log "detail"
  $scope.message = messages[$routeParams.id]
