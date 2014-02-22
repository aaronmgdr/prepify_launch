
var this_lesson = new Prepify.Collections.Questions

this_lesson.fetch()

var nextQuestion = function(level, correct) {
  if (correct) {
   next = this_lesson.findWhere({level: level+1})
  }
  else {
    next = this_lesson.findWhere({level: level})
  }
  return next.attributes
}