Rails.application.routes.draw do
  resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'authors#index'
  get '/authors', to: 'authors#index'
  get '/authors/new', to: 'authors#new', as: 'new_author'
  get '/authors/:slug', to: 'authors#show'
  post '/authors', to: 'authors#create'
  get '/authors/:slug/edit', to: 'authors#edit', as: 'author'
  patch '/authors/:id/edit', to: 'authors#update'
  delete '/authors/:slug', to: 'authors#destroy'
end
