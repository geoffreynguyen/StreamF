Rails.application.routes.draw do
  resources :films do
    collection do
      get 'search'
    end
  end
  root 'films#index'

  resources :categories
  get 'categories/index'

  resources :utilisateurs
  get 'utilisateurs/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


