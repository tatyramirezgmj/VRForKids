Rails.application.routes.draw do
  devise_for :users

  # get 'dash/enter'
  # get 'games/play/:id'
  get 'dash/dashboard'

  root 'static#welcome'
  get 'static/welcome'
  get 'game#index', to: 'games/index/'
  get 'game#show', to: 'games/show/:id'
  get 'game#play', to: 'games/play/:id'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
