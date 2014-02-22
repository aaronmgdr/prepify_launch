Prepify.Views.Question = Backbone.View.extend({
  render: function () {
    var newQuestionHtml = questionTemplate({equation: question.equation});
    // A view's el is a blank div (<div></div>) by default
    $(this.el).html(newQuestionHtml );
  }
});
