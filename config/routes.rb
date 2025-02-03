Rails.application.routes.draw do
  get 'main/index'
  resources :books do
    member do
      get :delete
    end
  end
  root "books#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
