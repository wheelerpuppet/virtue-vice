VirtueViceApp.factory("CardService", this.CardService = function($http) {
  return {
    getCards : function() {
      return $http.get(
        "/cards.json").then(function(res) {
          return res.data;
        });
      },

      deleteCard : function(id) {
        return $http.delete(
          "/cards/" + id).then(function(res) {
            return res.data;
          });
        },

        addCard : function(newCard) {
          return $http.post(
            "/cards", {value: newCard.value,
                      category: newCard.category, 
                      description: newCard.description,
                      author_id: newCard.author_id,
                      recipient_id: newCard.recipient_id}).then(function(res) {
              return res.data;
            });
          }
        };
      });
