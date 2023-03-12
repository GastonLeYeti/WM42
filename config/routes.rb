Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_out', to: 'users/sessions#destroy'
    get 'sign_up', to: 'users/registrations#new'


  end

  resources :users

  root to: "pages#home"
  resources :pages do
    collection do
      get :game_rules
    end
  end
  resources :parties, only: %i[show index new create destroy] do
    resources :players, only: %i[index show]
    resources :maps, only: %i[index show]
    resources :pnjs, only: %i[index show]
    resources :weapons, only: %i[index show]


  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
