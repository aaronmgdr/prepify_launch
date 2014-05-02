algebra = Lesson.create(name:"Algebra", intro: "Learn the basic and advanced algebra concepts on the
SAT and beat the test like a three-day old rug.", conclusion:"Subject matter includes: substitution, simplifying algebraic
expressions, properties of exponents, word problems, linear equations, inequalities, systems of equations, and more.")

geometry = Lesson.create(name:"Geometry", intro: "Learn foundational concepts in Geometry. If a trapezoid sounds like it belongs in a circus, this is for you.", conclusion:"Subject matter includes: the area and perimeter of a polygon, the area
and circumference of a circle, the Pythagorean Theorem, coordinate geometry, geometric visualization, and the special properties of isosceles, equilateral,
and right triangles. ")

question = Question.create(equation:"2x + 4 = 10", level: 1, description: "Solve for x")

question.answers = {
  possible: [ "3", "4", "5", "10" ],
  "4" => "You added it together, but I think you're missing something",
  "3" => "correct"
}
question.lesson_id = algebra.id
question.save