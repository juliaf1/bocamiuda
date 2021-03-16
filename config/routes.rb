Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :artists, only: [ :index, :show, :edit, :update, :new, :create, :destroy ]

  get '/sobre', to: "pages#sobre"
  root to: 'artists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
