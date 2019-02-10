Rails.application.routes.draw do

  devise_for :users, :controllers => { :users => "registrations" }
  root 'home#index'

  
  get '/class_groups', to: 'class_groups#index'
  get '/students', to: 'students#index'
  get '/students/new', to: 'students#new'
  post '/students/new', to: 'students#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
