VirtueViceApp.factory("HabitService", this.HabitService = function($http) {
  return {
    getHabits : function() {
      return $http.get(
        "/habits.json").then(function(res) {
          return res.data;
        });
      },

      deleteHabit : function(id) {
        return $http.delete(
          "/habits/" + id).then(function(res) {
            return res.data;
          });
        },

        addHabit : function(newHabit) {
          return $http.post(
            "/habits/", {verb: newHabit.verb,
                            amount: newHabit.amount,
                            subject: newHabit.subject,
                            interval: newHabit.interval}).then(function(res) {
              return res.data;
            });
          }
        };
      });
