Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/listings' => 'listings#index'
  get '/listings/new' => 'listings#new'
  post '/listings' => 'listing#create'
  get 'listings/:id' => 'listings#show'
  get 'listings/:id/edit' => 'listings#edit'
  put '/listings/:id' => 'listings#update'
  delete '/listings/:id' => 'listings#destroy'




end
