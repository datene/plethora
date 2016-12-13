Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get root to: 'resources#index'

  resources :tags, only: [:create]

  resources :resources, only: [:index, :show]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :resources, only: [ :index, :show, :update, :create ]
    end
  end

end