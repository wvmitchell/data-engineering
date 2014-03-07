TabParser::Application.routes.draw do

  root to: 'dashboard#new'

  resources :dashboard

end
