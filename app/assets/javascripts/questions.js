
var this_lesson = new Prepify.Collections.Questions

this_lesson.fetch()
// function GetQuestion(lesson_id, question_id) {
//   url = "lessons/"+lesson_id+"/questions/"+question_id+".json"
  
//   $.getJSON(url, function(json_from_server) {
    
//     console.log( "JSON Data: " + json_from_server);
//     var question = new Prepify.Models.Question(json_from_server)

//     console.log( "JSON Data: " + question.keys() );

//    });
//   console.log(url)
// }

var nextQuestion = function(correct) {
  if (correct) {
   next = this_lesson.findWhere({level:1})
  }
  else {
    next = "next"
  }

  return next
}