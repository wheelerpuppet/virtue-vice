VirtueViceApp.factory("DashboardService", this.DashboardService = function($http, $rootScope) {
  return {
    getUserDepartments : function(userId) {
      return $http.get(
        window.rootUrl + "/user/" + userId + "/departments").then(function(res) {
          return res.data;
        });
      }
    };
  });
