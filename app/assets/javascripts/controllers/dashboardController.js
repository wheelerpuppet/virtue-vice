VirtueViceApp.controller('DashboardCtrl', this.DashboardCtrl = function($scope, $rootScope, DashboardService) {

  $scope.user = [];

  DashboardService.getUser(1).then(function(data) {
    $scope.user = data;
    console.log("Success retrieving user from server");
    console.log(data);
  }, function(data) {
    console.log("Error retrieving user from server");
  });
});
