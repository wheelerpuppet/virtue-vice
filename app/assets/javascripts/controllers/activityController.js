VirtueViceApp.controller('ActivityCtrl', this.ActivityCtrl = function($scope, $rootScope, ActivityService) {

  $scope.user = [];

  DashboardService.getUser(1).then(function(data) {
    $scope.user = data;
    console.log("Success retrieving user from server");
    console.log(data);
  }, function(data) {
    console.log("Error retrieving user from server");
  });
});
