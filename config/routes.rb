Rails.application.routes.draw do

	resources :likes, only: [:new, :create, :index, :destroy]

end
