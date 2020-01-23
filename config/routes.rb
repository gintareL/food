Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'foodstuffs#index'

  resource :foodstuffs do

  end

  get '/calculation', to: 'calculation#index', as: 'calculation'
  post '/calculate', to: 'calculation#calculate', as: 'calculate'
  get '/show_calculation', to: 'calculation#show', as: 'show_calculation'
end
