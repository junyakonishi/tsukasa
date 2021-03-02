Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'items#index'
  resources :items do


    collection do
      get 'search'
    end


  resources :contacts
  # get 'contacts/new',to: 'contacts#new'

  end

end


