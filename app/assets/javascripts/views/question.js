Prepify.Views.Question = Backbone.View.extend({
  initialize: function (options) {
    this.model = options.model
  },
  render: function () {
    $("#question").empty();
    var newQuestionHtml = questionTemplate({equation: "x2", description: "so exy"});
    // A view's el is a blank div (<div></div>) by default
    $("#question").html(newQuestionHtml);
  }
});