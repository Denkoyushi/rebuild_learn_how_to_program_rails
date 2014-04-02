class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    @sections = Section.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(params[:lesson])
    redirect_to('/')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(params[:lesson])
    redirect_to('/')
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to('/')
  end
end
