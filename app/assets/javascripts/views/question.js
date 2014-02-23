Prepify.Views.Question = Backbone.View.extend({
  initialize: function (options) {
    current_answers = this.model.get('answers')
    console.log("init model:" + current_answers)
  },
  render: function () {
    var newQuestionHtml = questionTemplate(this.model.toJSON());
    // A view's el is a blank div (<div></div>) by default
    this.$el.html(newQuestionHtml);
    // this.delegateEvents(this.events);
    console.log('this.$el', this.$el);
  },

  events: {
    'click .answer_value' : 'onGuess',
    'click .show_reason'  : 'showReason',
    'click .retry'  : 'collapseAnswer',
    'click .next'  : 'nextQuestion'
  },
  onGuess: function (e) {
    console.log('guessed_click')
    
    num_picked = $(e.currentTarget).index()  
    answers = this.model.get('answers')
    
    ans_obj = answers[num_picked] 
    console.log(ans_obj)
    
    if (ans_obj.correct) {
      button_text = "Next";
      exclamation = 'Correct!'
    } else {
      button_text = "Try Again"
      exclamation = 'Whoops!' 
    }
    
    var newGuessHtml = guessTemplate({exclamation: exclamation, button_text:button_text});
    $(e.currentTarget).children().html(newGuessHtml)
  },
  showReason: function(e) {
    console.log("reason_clicked")
  },
  collapseAnswer: function(e) {
    console.log("try again")
  },
  nextQuestion: function(e) {
    console.log("next")
  }
});