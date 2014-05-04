class QuestionsController < ApplicationController
  layout "questions"

  def index
    @questions = Question.find_all_by_lesson_id(params[:lesson_id])

    @question = @questions.first
  end

  def show
    @question = Question.find_by_id(params[:id])

    respond_to do |format|

      format.html # show.html.erb
      format.json { render json: @question }

    end
  end
end
