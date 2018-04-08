Rails.application.routes.draw do
  root :to => 'mountains#index'
  get '/mountains' => 'mountains#index' #mountains_path
  get '/mountains/new' => 'mountains#new', :as=> 'mountains_new'
  post '/mountains' => 'mountains#create'
  get '/mountains/:id' => 'mountains#show', :as=> 'mountain'
  get '/mountains/:id/edit' => 'mountains#edit', :as=> 'mountains_edit'
  get '/mountains/:id' => 'mountains#destroy'
end
