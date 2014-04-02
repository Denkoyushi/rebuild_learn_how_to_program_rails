LearnHowToProgram::Application.routes.draw do

  ### lesson routes

  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons', {:via => :post, :to => 'lessons#create'})
  match('lessons/new', {:via => :get, :to => 'lessons#new'})
  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
  match('lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})
  match('lessons/:id', {:via => :delete, :to => 'lessons#destroy'})
  match('/', {:via => :get, :to => 'lessons#index'})

  ### section routes

  match('sections', {:via => :get, :to => 'sections#index'})
  match('sections', {:via => :post, :to => 'sections#create'})
  match('sections/new', {:via => :get, :to => 'sections#new'})
  match('sections/:id', {:via => :get, :to => 'sections#show'})
  match('sections/:id/edit', {:via => :get, :to => 'sections#edit'})
  match('sections/:id', {:via => [:patch, :put], :to => 'sections#update'})
  match('sections/:id', {:via => :delete, :to => 'sections#destroy'})
  match('/', {:via => :get, :to => 'sections#index'})

  ###chapter routes
  match('chapters', {:via => :get, :to => 'chapters#index'})
  match('chapters', {:via => :post, :to => 'chapters#create'})
  match('chapters/new', {:via => :get, :to => 'chapters#new'})
  match('chapters/:id', {:via => :get, :to => 'chapters#show'})
  match('chapters/:id/edit', {:via => :get, :to => 'chapters#edit'})
  match('chapters/:id', {:via => [:patch, :put], :to => 'chapters#update'})
  match('chapters/:id', {:via => :delete, :to => 'chapters#destroy'})
  match('/', {:via => :get, :to => 'chapters#index'})
end
