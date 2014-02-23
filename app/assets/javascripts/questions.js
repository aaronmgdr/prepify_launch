// Get all the questions in a BB Collection
var this_lesson = new Prepify.Collections.Questions
this_lesson.fetch()


// underscore template 

// determine which question to render next
var nextQuestion = function(level, correct) {
  if (correct) {
   next_question = this_lesson.findWhere({level: level+1})
  }
  else {
    next_question = this_lesson.findWhere({level: level})
  }
  //pass it to the View and render it
  
  question_view = new Prepify.Views.Question({model:next_question}) //
  question_view.render()
}

