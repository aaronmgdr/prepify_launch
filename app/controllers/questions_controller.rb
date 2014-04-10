class QuestionsController < ApplicationController
  def index
    @questions = Question.find_all_by_lesson_id(params[:lesson_id])

    @question = @questions.first

    respond_to do |format|

      format.html # index.html.erb
      format.json { render json: @questions }

    end

  end

  def show
    @lesson = Lesson.find(params[:lesson_id])
    @question = Question.find(params[:id])

    respond_to do |format|

      format.html { show.html.haml }
      format.json { render json: @question }

    end
  end

  def new
    @question = Question.new
    @lesson = Lesson.find(params[:lesson_id])
  end

  def create
    q = params[:question]
    @lesson = Lesson.find(params[:lesson_id])
    @question = Question.create(question_params)
    render "show"
  end

  private

  def question_params
    params.require(:question).permit(:description, :equation, :level)
  end
end
