class QuestionsController < ApplicationController
  def index
    @questions = Question.find_all_by_lesson_id(params[:lesson_id])

    respond_to do |format|

      format.html # index.html.erb
      format.json { render json: @questions }

    end

  end

  def show
    @question = Question.find_by_id(params[:id])
  end
end
