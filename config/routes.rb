Rails.application.routes.draw do

  ActiveAdmin.routes(self)
	resources :photos
	root 'photos#index'

	get '/user/:id' => 'user#show', as: 'user_show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
