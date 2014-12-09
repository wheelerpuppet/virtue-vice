VirtueViceApp.factory("DashboardService", this.DashboardService = function($http) {
  return {
    getUser : function(userId) {
      return $http.get(
        "/users/" + userId + ".json").then(function(res) {
          return res.data;
        });
      }
    };
  });
