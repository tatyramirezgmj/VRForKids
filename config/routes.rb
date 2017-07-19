Rails.application.routes.draw do
  get 'static/welcome'

  resources :users
  root 'static#welcome'
  get 'static/welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
