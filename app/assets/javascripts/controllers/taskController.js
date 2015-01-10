VirtueViceApp.controller('TaskCtrl', this.TaskCtrl = function($scope, $rootScope, TaskService, ActivityService) {

  $scope.tasks = [];
  $scope.newTaskForm = "";

  $scope.expandTaskForm = function() {

    $('#newTaskForm').css('display', 'block');
  };

  // clear and hide form
  $scope.collapseTaskForm = function() {

    $scope.newTaskForm.name = "";
    $scope.newTaskForm.duedate = "";
    $scope.newTaskForm.points = "";

    $('#newTaskForm').css('display', 'none');
  };

  $scope.submitTaskForm = function() {

    TaskService.addTask($scope.newTaskForm).then(function(data) {
      console.log("Success retrieving user from server");
      $scope.updateTasks();
      $scope.collapseTaskForm();
    }), function(data) {
      console.log("Error saving new Task on server");
    };

  };

  $scope.updateTasks = function() {

    TaskService.getTasks().then(function(data) {
      $scope.tasks = data;
      console.log("Success updating tasks");
      console.log(data);
    }, function(data) {
      console.log("Error updating tasks");
    });
  };

  $scope.deleteTask = function(id) {
    TaskService.deleteTask(id).then(function(data) {
      console.log("Success removing task from server");
      $scope.updateTasks();
    }, function(data) {
      console.log("id = " + id);
      console.log("Error removing task from server");
    });
  };


  // Initialization code

  $scope.updateTasks();

});
