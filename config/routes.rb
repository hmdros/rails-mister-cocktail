Rails.application.routes.draw do
  # get '/index', to: 'cocktails#index', as: 'cocktails'
  # get '/show/:id', to: 'cocktails#show', as: 'cocktail'
  # get '/new', to: 'cocktails#new', as: 'new_cocktail'
  # post '/create', to: 'cocktails#create'
  # get '/:id/edit', to: 'cocktails#edit', as: 'edit_cocktail'
  # patch '/update', to: 'cocktails#update'
  # delete '/destroy/:id', to: 'cocktails#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
