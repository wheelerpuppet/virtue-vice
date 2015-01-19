VirtueViceApp.controller('HabitCtrl', this.HabitCtrl = function($scope, $rootScope, HabitService) {

  $scope.habits = [];

  $scope.newHabitForm = "";
  // TODO: this should come from the server
  $scope.interval_options = ['a_day', 'a_week', 'a_month'];
  $scope.expandHabitForm = function() {

    $('#newHabitForm').css('display', 'block');
  };

  // clear and hide form
  $scope.collapseHabitForm = function() {

    $scope.newHabitForm.verb = "";
    $scope.newHabitForm.amount = "";
    $scope.newHabitForm.subject = "";
    $scope.newHabitForm.interval = "a_week";

    $('#newHabitForm').css('display', 'none');
  };

  $scope.submitHabitForm = function() {
    HabitService.addHabit($scope.newHabitForm).then(function(data) {
      console.log("Success saving new Habit on server");
      $scope.updateHabits();
      $scope.collapseHabitForm();
    }), function(data) {
      console.log("Error saving new Habit on server");
    };
  };

  $scope.updateHabits = function() {
    HabitService.getHabits().then(function(data) {
      $scope.habits = data;
      console.log("Success updating Habits");
      console.log(data);
    }, function(data) {
      console.log("Error updating Habits");
    });
  };

  $scope.deleteHabit = function(id) {
    HabitService.deleteHabit(id).then(function(data) {
      console.log("Success removing Habit from server");
      $scope.updateHabits();
    }, function(data) {
      console.log("Error removing Habit from server");
    });
  };


  // Initialization code

  $scope.updateHabits();

});
