Rails.application.routes.draw do
  devise_for :users

  # get 'dash/enter'
  # get 'games/play/:id'
  get 'dash/dashboard'

  root 'static#welcome'
  get 'static/welcome'
  get 'game/index'

  get 'react_game/game'
  get 'soundsgame' => 'react_game#show', id: 1

  get 'game/:id/show', to: 'game#show', as:'game_show'

  get 'dashboard/game_sessions/', to: 'game_session#index', as: 'sessions_index'

  get 'game/:id/play', to: 'game_session#start', as: 'session_start'
  post 'game/:id/play', to: 'game_session#store', as:'session_store'

  get 'game/:id/sounds_game', to: 'game#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
