Rails.application.routes.draw do
  resources :images, except: [:show]

  get '/images/:identifier',to: 'images#show'
end
