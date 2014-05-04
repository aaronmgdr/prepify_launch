class LessonsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

end
