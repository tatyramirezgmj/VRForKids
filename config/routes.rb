Rails.application.routes.draw do
  devise_for :users

  # get 'dash/enter'
  # get 'games/play/:id'
  get 'dash/dashboard'

  root 'static#welcome'
  get 'static/welcome'
  get 'game/index'

  get 'game/:id/show', to: 'game#show', as:'game_show'

  get 'game/:id/play', to: 'game_session#start', as:'session_start'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
