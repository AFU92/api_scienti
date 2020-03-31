Rails.application.routes.draw do

  get '/health', to: 'health#health'
  get '/regions', to: 'regions#index'

end
