Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  get "/search", to: "welcome#search"

  get "/favorites", to: "foods#favorites"

  resources :foods do
    member do
      post :add_to_favorites
      delete :remove_favorite
    end
  end
end
