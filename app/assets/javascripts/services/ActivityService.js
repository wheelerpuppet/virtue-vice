VirtueViceApp.factory("ActivityService", this.ActivityService = function($http) {
  return {
    getUser : function(userId) {
      return $http.get(
        "/users/" + userId + ".json").then(function(res) {
          return res.data;
        });
      }
    };
  });
