Rails.application.routes.draw do
  get '/manifestos', to: 'manifestos#index'
  get '/manifestos/:id', to: 'manifestos#show'
  get '/manifestos/trending', to: 'manifestos#trending'
  get '/manifestos/discover', to: 'manifestos#discover'
  post '/manifestos', to: 'manifestos#create'
  get '/comments', to: 'comments#index'
  post '/comments', to: 'comments#create'
end