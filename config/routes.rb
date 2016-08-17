Rails.application.routes.draw do

  root 'welcome#index'

	resources :likes, only: [:new, :create, :index, :destroy]

	resources :users

	resources :statuses

	resources :sessions, only: [:new, :create, :destroy]

end
