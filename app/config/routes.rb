Rails.application.routes.draw do

  resources :tasks, :only => [:index, :show, :create, :update, :destroy]

  devise_for :users, skip: [:sessions]

  devise_scope :user do
    get 'login', to: 'users/sessions#new', as: :new_user_session
    post 'login', to: 'users/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
  root "top#index"
end
