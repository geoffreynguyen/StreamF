Rails.application.routes.draw do
  resources :utilisateurs
  resources :categories
  resources :films

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'categories/index'
  get 'films/index'
  get 'utilisateurs/index'
end
