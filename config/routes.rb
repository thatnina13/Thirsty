# frozen_string_literal: true

Rails.application.routes.draw do
  resources :products, except: %i[new edit]
  # RESTful routes
  # resources :product, except: %i[new edit]

  resources :examples, except: %i[new edit]
  # get '/products' => 'products#index'
  # get '/products/:id' => 'products#show'
  # delete '/products/:id' => 'products#destroy'
  # post '/products' => 'products#create'
  # patch '/products/:id' => 'products#update'
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
