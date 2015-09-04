ManifestoApi::Application.routes.draw do
  namespace :api do 
  	namespace :v1 do 
  		get '/manifestos/', to: 'manifestos#index'
		  get '/manifestos/:id/', to: 'manifestos#show'
		  get '/manifestos/trending/', to: 'manifestos#trending'
		  get '/manifestos/discover/', to: 'manifestos#discover'
		  post '/manifestos/', to: 'manifestos#create'
		  delete 'manifestos/:id', to: 'manifestos#destroy'
		  get '/comments', to: 'comments#index'
		  post '/comments', to: 'comments#create'
  	end
  end
end