Rails.application.routes.draw do
  resources :users, only: [:index, :create, :update, :show, :destroy] do
    resources :contacts, only: [:index]
    resources :comments, only: [:index, :create, :destroy, :update]
    resources :favorited_contacts, only: [:index, :create, :destroy, :update]
  end
  resources :contacts, only: [:create, :update, :show, :destroy] do
    resources :comments, only: [:index, :create, :destroy, :update]
  end
  resources :contact_shares, only: [:create, :destroy] do
    resources :comments, only: [:index, :create, :destroy, :update]
  end

  resources :groups, only: [:index, :show, :create, :update, :destroy]
  # get '/users' => 'users#index'
  # post '/users' => 'users#create'
  # get '/users/new' => 'users#new', as: 'new_user'
  # get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  # get 'users/:id' => 'users#show', as: 'user'
  # patch '/users/:id' => 'users#update'
  # put '/users/:id' => 'users#update'
  # delete '/users/:id' => 'users#destroy'
end
