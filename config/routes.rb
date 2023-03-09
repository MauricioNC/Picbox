Rails.application.routes.draw do
  resources :images, only: [:index, :new, :create, :update, :destroy]

  get '/images/:identifier',to: 'images#show'
end
