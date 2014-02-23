Prepify.Views.Question = Backbone.View.extend({
  initialize: function (options) {
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
    console.log($(e.currentTarget))
  
    $(e.currentTarget).next().html((guessTemplate))
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