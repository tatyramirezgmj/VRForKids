Rails.application.routes.draw do
  devise_for :users

  # get 'dash/enter'
  # get 'games/play/:id'
  get 'dash/dashboard'

  root 'static#welcome'
  get 'static/welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
