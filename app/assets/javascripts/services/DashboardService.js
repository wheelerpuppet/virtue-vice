VirtueViceApp.factory("DashboardService", this.DashboardService = function($http, $routeProvider) {
  return {
    getUserDepartments : function() {
      return $http.get(
        window.rootUrl + "/user/" + userId + "/departments").then(function(res) {
          return res.data;
        });
      }
    };
  });
