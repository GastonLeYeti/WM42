Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD

  root to: "pages#home"
  resources :parties, only: %i[show new create destroy] do
=======
  root to: "pages#home"
  resources :parties, only: %i[show index new create destroy] do
>>>>>>> bb53484a60fc19103d927caa0228d278de65e95c
    resources :players, only: %i[index show]
    resources :maps, only: %i[index show]
    resources :pnjs, only: %i[index show]
    resources :weapons, only: %i[index show]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
