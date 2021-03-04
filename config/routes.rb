Rails.application.routes.draw do
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'items#index'
  get 'search', to: 'items#search'

  resources :items do


    collection do
      get 'search'
    end



  end
  resources :contacts
  resources :companies
    get '/companies', to: 'companies#show'
  resources :users
    get '/users/items/show', to: 'items#show'

  

  # end

  # # resources :contacts
  # # resources :companies
  # # # root to: 'home#index'
  # # # get 'home/show'


end


