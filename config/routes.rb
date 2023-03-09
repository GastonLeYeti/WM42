Rails.application.routes.draw do
  devise_for :users

  root to: "pages#pnjs"
  resources :parties, only: %i[show new create destroy] do
    resources :players, only: %i[index show]
    resources :maps, only: %i[index show]
    resources :pnjs, only: %i[index show]
    resources :weapons, only: %i[index show]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
