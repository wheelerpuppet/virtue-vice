VirtueViceApp.controller('TaskCtrl', this.TaskCtrl = function($scope, $rootScope, TaskService) {

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
      console.log("Success saving new Task on server");
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
      console.log("Error removing task from server");
    });
  };


  // Initialization code

  $scope.updateTasks();

});
