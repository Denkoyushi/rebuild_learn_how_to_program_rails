class SectionsController < ApplicationController
  def index
    @chapters = Chapter.all.order(order_number: :asc)
    render('lessons/index.html.erb')
  end

  def show
    @section = Section.find(params[:id])
    @lessons = @section.lessons
    render('sections/show.html.erb')
  end

  def new
    render('sections/new.html.erb')
  end

  def create
    @section = Section.create(params[:section])
    redirect_to('/')
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    @section.update(params[:section])
    redirect_to('/')
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to('/')
  end
end
