VirtueViceApp.factory("TaskService", this.TaskService = function($http) {
  return {
    getTasks : function() {
      return $http.get(
        "/single_actions.json").then(function(res) {
          return res.data;
        });
      },

      deleteTask : function(id) {
        return $http.delete(
          "/single_actions/" + id).then(function(res) {
            return res.data;
          });
        },

      addTask : function(newTask) {
        return $http.post(
          "/single_actions", {name: newTask.name, points: newTask.points, duedate: newTask.duedate}).then(function(res) {
            return res.data;
          });
        }
    };
  });
