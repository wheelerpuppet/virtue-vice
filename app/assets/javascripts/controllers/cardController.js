VirtueViceApp.controller('CardCtrl', this.CardCtrl = function($scope, $rootScope, CardService) {

  $scope.cards = [];
  $scope.newCardForm = "";

  $scope.expandCardForm = function() {

    $('#newCardForm').css('display', 'block');
  };

  // clear and hide form
  $scope.collapseCardForm = function() {

    $scope.newCardForm.description = "";
    $scope.newCardForm.value = "";
    $scope.newCardForm.category = "";
    $scope.newCardForm.recipient_id = "";
    $scope.newCardForm.author_id = "";

    $('#newCardForm').css('display', 'none');
  };

  $scope.submitCardForm = function() {

    CardService.addCard($scope.newCardForm).then(function(data) {
      console.log("Success saving new Card");
      $scope.updateCards();
      $scope.collapseCardForm();
    }), function(data) {
      console.log("Error saving new Card");
    };

  };

  $scope.updateCards = function() {

    CardService.getCards().then(function(data) {
      $scope.cards = data;
      console.log("Success updating Cards");
      console.log(data);
    }, function(data) {
      console.log("Error updating Cards");
    });
  };

  $scope.deleteCard = function(id) {
    CardService.deleteCard(id).then(function(data) {
      console.log("Success removing Card from server");
      $scope.updateCards();
    }, function(data) {
      console.log("id = " + id);
      console.log("Error removing Card from server");
    });
  };


  // Initialization code

  $scope.updateCards();

});
