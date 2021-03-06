Rails.application.routes.draw do
  
	root "home#index"
  get 'home/index'
	
	devise_for :users, controllers: {registrations: "registrations"}

	resources :students
	resources :teachers
  resources :cities
  resources :types
  resources :photos
  resources :topics
  resources :tutorings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
