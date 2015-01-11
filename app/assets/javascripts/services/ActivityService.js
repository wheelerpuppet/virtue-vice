VirtueViceApp.factory("ActivityService", this.ActivityService = function($http) {
  return {
    getActivities : function() {
      return $http.get(
        "/activities.json").then(function(res) {
          return res.data;
        });
      },

      deleteActivity : function(id) {
        return $http.delete(
          "/activities/" + id).then(function(res) {
            return res.data;
          });
        },

        addActivity : function(newActivity) {
          return $http.post(
            "/activities", {verb: newActivity.verb,
                            relationship: newActivity.relationship,
                            amount: newActivity.amount,
                            subject: newActivity.subject,
                            interval: newActivity.interval,
                            points: newActivity.points}).then(function(res) {
              return res.data;
            });
          }
        };
      });
