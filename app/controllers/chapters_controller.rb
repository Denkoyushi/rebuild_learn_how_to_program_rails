class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all.order(order_number: :asc)
    render('/index.html.erb')
  end

  def show
    @chapter = Chapter.find(params[:id])
    render('chapters/show.html.erb')
  end

  def new
    @sections = Section.all
    render('chapters/new.html.erb')
  end

  def create
    @chapter = Chapter.create(params[:chapter])
    redirect_to('/')
  end

  def edit
    @sections = Section.all
    @chapter = Chapter.find(params[:id])
    render('chapters/edit.html.erb')
  end

  def update
    @chapter = Chapter.find(params[:id])
    @chapter.update(params[:chapter])
    redirect_to('/')
  end

  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to('/')
  end
end
